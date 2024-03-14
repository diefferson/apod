import 'package:apod/src/utils/extensions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:apod/src/data/api/apod_api.dart';
import 'package:apod/src/domain/model/apod_model.dart';

import '../../mocks/data_mocks.mocks.dart';

void main() {
  group('ApodApi', () {
    test(
        'should call get with correct path and query parameters when getApodList is called',
        () async {
      final dio = MockDio();
      final apodApi = ApodApi(dio);
      final startDate = DateTime(2022, 01, 01);
      final endDate = DateTime(2022, 01, 10);

      when(dio.get(
        '/planetary/apod',
        queryParameters: {
          'start_date': '2022-01-01',
          'end_date': '2022-01-10',
          'thumbs': true,
        },
      )).thenAnswer((_) async => Response(
            data: List.generate(
              10,
              (index) => {
                'date': '2022-01-01',
                'explanation': 'Test explanation',
                'media_type': 'image',
                'title': 'Test title',
                'url': 'https://test.com',
              },
            ),
            requestOptions: RequestOptions(path: '/planetary/apod'),
          ));

      final result =
          await apodApi.getApodList(startDate: startDate, endDate: endDate);

      verify(dio.get(
        '/planetary/apod',
        queryParameters: {
          'start_date': '2022-01-01',
          'end_date': '2022-01-10',
          'thumbs': true,
        },
      )).called(1);
      expect(result, isA<List<ApodModel>>());
      expect(result.length, equals(10));
    });
  });
}
