import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:apod/src/data/apod_repository.dart';
import 'package:apod/src/domain/model/apod_model.dart';

import '../mocks/data_mocks.mocks.dart';


void main() {
  group('ApodRepository', () {
    test('should call getApodList with correct count when getApodList is called', () async {
      final api = MockApodApi();
      final repository = ApodRepository(api);
      final count = 10;

      when(api.getApodList(count: count)).thenAnswer((_) async => List.generate(
        count,
            (index) => ApodModel(
          date: DateTime(2022,01,01),
          explanation: 'Test explanation',
          mediaType: 'image',
          title: 'Test title',
          url: 'https://test.com',
        ),
      ));

      final result = await repository.getApodList(count: count);

      verify(api.getApodList(count: count)).called(1);
      expect(result, isA<List<ApodModel>>());
      expect(result.length, equals(count));
    });
  });
}