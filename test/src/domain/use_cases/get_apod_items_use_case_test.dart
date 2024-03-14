import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/domain/use_cases/get_apod_items_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stark/stark.dart';

import '../../mocks/data_mocks.mocks.dart';
import '../../mocks/domain_mocks.mocks.dart';

void main() {
  group('GetApodItemsUseCase', () {
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
          }
        ],
        logger: Logger(level: Level.NONE),
      );
      when(mockErrorHandler.handle(any)).thenReturn(UnexpectedException());
    });
    test('should call getApodList with correct dates when run is called',
        () async {
      final repository = MockApodRepository();
      final useCase = GetApodItemsUseCase(repository);
      final startDate = DateTime(2022, 01, 01);
      final endDate = DateTime(2022, 01, 10);

      when(repository.getApodList(startDate: startDate, endDate: endDate))
          .thenAnswer((_) async => List.generate(
                3,
                (index) => ApodModel(
                  date: DateTime(2022, 01, 01),
                  explanation: 'Test explanation',
                  mediaType: 'image',
                  title: 'Test title',
                  url: 'https://test.com',
                ),
              ));

      final result = await useCase.run(
          GetApodItemsUseCaseParams(startDate: startDate, endDate: endDate));

      verify(repository.getApodList(startDate: startDate, endDate: endDate))
          .called(1);
      expect(result, isA<List<ApodModel>>());
      expect(result.length, equals(3));
    });

    test('GetApodItemsUseCase should return items sorted by date', () async {
      final repository = MockApodRepository();
      final items = [
        ApodModel(date: DateTime(2022, 1, 1)),
        ApodModel(date: DateTime(2022, 1, 3)),
        ApodModel(date: DateTime(2022, 1, 2)),
      ];
      when(repository.getApodList(
        startDate: anyNamed('startDate'),
        endDate: anyNamed('endDate'),
      )).thenAnswer((_) async => items);

      final useCase = GetApodItemsUseCase(repository);

      final result = await useCase.run(GetApodItemsUseCaseParams(
        startDate: DateTime(2022, 1, 1),
        endDate: DateTime(2022, 1, 3),
      ));

      for (var i = 0; i < result.length - 1; i++) {
        expect(true, result[i].date.isAfter(result[i + 1].date));
      }
    });
  });
}
