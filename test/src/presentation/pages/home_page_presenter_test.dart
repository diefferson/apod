import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/domain/use_cases/get_apod_items_use_case.dart';
import 'package:apod/src/utils/extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:apod/src/presentation/pages/home_page_presenter.dart';

import '../../mocks/domain_mocks.mocks.dart';

void main() {
  group('HomePagePresenter', () {
    final mockUseCase = MockGetApodItemsUseCase();
    late HomePagePresenter presenter;

    setUp(() {
      presenter = HomePagePresenter(mockUseCase);

      when(
        mockUseCase.execute(
            params: anyNamed('params'),
            withError: anyNamed('withError'),
            withLoading: anyNamed('withLoading')),
      ).thenAnswer((_) => Future.value(
            Right(
              List.generate(
                3,
                (index) => ApodModel(
                  date: DateTime(2022, 01, 01),
                  explanation: 'Test explanation',
                  mediaType: 'image',
                  title: 'Test title',
                  url: 'https://test.com',
                ),
              ),
            ),
          ));
    });

    test('init', () async {
      presenter.init();
      final capturedParams = (verify(mockUseCase.execute(
              params: captureAnyNamed('params'),
              withError: true,
              withLoading: true))
            ..called(1))
          .captured
          .first as GetApodItemsUseCaseParams;

      final expectedEndDate = DateTime.now();
      final expectedStartDate =
          expectedEndDate.subtract(const Duration(days: 7));

      expect(expectedStartDate.toDateString(),
          capturedParams.startDate.toDateString());
      expect(expectedEndDate.toDateString(),
          capturedParams.endDate.toDateString());

      final list = await presenter.items.first;
      expect(list.length, 3);
    });

    test('refresh', () async {
      await presenter.refresh();
      final capturedParams = (verify(mockUseCase.execute(
              params: captureAnyNamed('params'),
              withError: true,
              withLoading: true))
            ..called(1))
          .captured
          .first as GetApodItemsUseCaseParams;

      final expectedEndDate = DateTime.now();
      final expectedStartDate =
          expectedEndDate.subtract(const Duration(days: 7));

      expect(expectedStartDate.toDateString(),
          capturedParams.startDate.toDateString());
      expect(expectedEndDate.toDateString(),
          capturedParams.endDate.toDateString());

      final list = await presenter.items.first;
      expect(list.length, 3);
    });

    test('loadMore', () async {
      presenter.refresh();
      presenter.loadMore();
      final capturedParams = (verify(mockUseCase.execute(
              params: captureAnyNamed('params'),
              withError: true,
              withLoading: false))
            ..called(1))
          .captured
          .first as GetApodItemsUseCaseParams;

      final expectedEndDate = DateTime.now()..subtract(const Duration(days: 8));
      final expectedStartDate =
          expectedEndDate.subtract(const Duration(days: 7));

      expect(expectedStartDate.toDateString(),
          capturedParams.startDate.toDateString());
      expect(expectedEndDate.toDateString(),
          capturedParams.endDate.toDateString());

      final list = await presenter.items.first;
      expect(list.length, 6);
    });
  });
}
