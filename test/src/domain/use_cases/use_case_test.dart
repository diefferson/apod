import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/domain/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stark/stark.dart';

import '../../mocks/domain_mocks.mocks.dart';

class TestUseCase extends UseCase<int, EmptyParams> {
  @override
  Future<int> run(EmptyParams params) async {
    return 1;
  }
}

class ErrorUseCase extends UseCase<int, EmptyParams> {
  @override
  Future<int> run(EmptyParams params) {
    throw UnexpectedException();
  }
}

void main() {
  group('UseCase', () {
    final mockErrorHandler = MockErrorHandler();
    final mockErrorService = MockErrorService();
    final mockLoadingService = MockLoadingService();

    setUp(() {
      Stark.clear();
      Stark.init(
        [
          {
            single<ErrorHandler>((i) => mockErrorHandler),
            single<ErrorService>((i) => mockErrorService),
            single<LoadingService>((i) => mockLoadingService),
          },
        ],
        logger: Logger(level: Level.NONE),
      );
      when(mockErrorHandler.handle(any)).thenReturn(UnexpectedException());
    });

    test('execute with success', () async {
      final useCase = TestUseCase();
      final result = await useCase.execute();

      verifyNever(mockErrorHandler.handle(any));
      expect(result, const Right(1));
    });

    test('execute with error', () async {
      final useCase = ErrorUseCase();
      final exception = ApodException();
      when(mockErrorHandler.handle(any)).thenReturn(exception);
      final result = await useCase.execute();

      verify(mockErrorHandler.handle(any)).called(1);
      expect(result, Left(exception));
    });

    test('should call error service when withError is true', () async {
      final useCase = ErrorUseCase();

      await useCase.execute(
        withError: true,
      );

      verify(mockErrorHandler.handle(any)).called(1);
      verify(mockErrorService.addError(any)).called(1);
    });

    test('should call LoadingService when withLoading is true', () async {
      final useCase = TestUseCase();

      await useCase.execute(withLoading: true);

      verify(mockLoadingService.startLoading()).called(1);
      verifyNever(mockErrorHandler.handle(any));
      verify(mockLoadingService.stopLoading()).called(1);
    });
  });

  group('EitherExtensions', () {
    test('onError should call action when Left', () async {
      var isCalled = false;
      final either = Future.value(Left<ApodException, int>(ApodException()));

      await either.onError((error) {
        isCalled = true;
      });

      expect(isCalled, isTrue);
    });

    test('onError should not call action when Right', () async {
      var isCalled = false;
      final either = Future.value(const Right<ApodException, int>(1));

      await either.onError((error) {
        isCalled = true;
      });

      expect(isCalled, isFalse);
    });

    test('onSuccess should call action when Right', () async {
      var isCalled = false;
      final either = Future.value(const Right<ApodException, int>(1));

      await either.onSuccess((result) {
        isCalled = true;
      });

      expect(isCalled, isTrue);
    });

    test('onSuccess should not call action when Left', () async {
      var isCalled = false;
      final either = Future.value(Left<ApodException, int>(ApodException()));

      await either.onSuccess((result) {
        isCalled = true;
      });

      expect(isCalled, isFalse);
    });
  });
}
