import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:apod/src/data/apod_repository.dart';
import 'package:apod/src/domain/model/apod_model.dart';

import '../mocks/data_mocks.mocks.dart';

void main() {
  group('ApodRepository', () {
    test(
        'should call getApodList with correct count when getApodList is called',
        () async {
      final api = MockApodApi();
      final repository = ApodRepository(api);
      final startDate = DateTime(2022, 01, 01);
      final endDate = DateTime(2022, 01, 10);

      when(api.getApodList(startDate: startDate, endDate: endDate))
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

      final result =
          await repository.getApodList(startDate: startDate, endDate: endDate);

      verify(api.getApodList(startDate: startDate, endDate: endDate)).called(1);
      expect(result, isA<List<ApodModel>>());
      expect(result.length, equals(3));
    });
  });
}
