import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/utils/extensions.dart';
import 'package:dio/dio.dart';

class ApodApi {
  ApodApi(this._dio);

  final Dio _dio;

  Future<List<ApodModel>> getApodList({required DateTime startDate,required DateTime endDate}) async {
    final response = await _dio.get(
      '/planetary/apod',
      queryParameters: {
        'start_date': startDate.toDateString(),
        'end_date': endDate.toDateString(),
        'thumbs': true,
      },
    );
    return (response.data as List).map((e) => ApodModel.fromJson(e)).toList();
  }
}
