
import 'package:apod/src/domain/exception/error_handler.dart';
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

    setUp(() {
      Stark.init([
        {
          single<ErrorHandler>((i) => mockErrorHandler),
        }
      ]);
      when(mockErrorHandler.handle(any)).thenReturn(UnexpectedException());
    });

    test('should create UseCase with default values when no arguments are provided', () {
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
  });
}