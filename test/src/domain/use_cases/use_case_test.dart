import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/domain/use_cases/use_case.dart';
import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stark/stark.dart';

import '../../mocks/domain_mocks.mocks.dart';

class TestUseCase extends UseCase<int, None> {
  @override
  Future<int> run(None params) async {
    return 1;
  }
}

class ErrorUseCase extends UseCase<int, None> {
  @override
  Future<int> run(None params) {
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

    test(
        'should create UseCase with default values when no arguments are provided',
        () {
      final useCase = TestUseCase();

      expect(useCase, isNotNull);
    });

    test('should execute UseCase successfully when run is called', () async {
      final useCase = TestUseCase();

      final result = await useCase.execute().asFuture();

      verifyNever(mockErrorHandler.handle(any));
      expect(result, 1);
    });

    test('should handle error when run throws an exception', () async {
      final useCase = ErrorUseCase();

      useCase.execute();

      verify(mockErrorHandler.handle(any)).called(1);
    });

    test('should call error service when withError is tru', () async {
      final useCase = ErrorUseCase();

      useCase.execute(
        withError: true,
      );

      verify(mockErrorHandler.handle(any)).called(1);
      verify(mockErrorService.addError(any)).called(1);
    });

    test('should call LoadingService when withLoading is true', () async {
      final useCase = TestUseCase();

      final result = await useCase.execute(withLoading: true).asFuture();

      verify(mockLoadingService.startLoading()).called(1);
      verifyNever(mockErrorHandler.handle(any));
      expect(result, 1);
      verify(mockLoadingService.stopLoading()).called(1);
    });
  });
}
