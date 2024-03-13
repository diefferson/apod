import 'package:apod/src/domain/model/apod_model.dart';
import 'package:dio/dio.dart';

class ApodApi {
  ApodApi(this._dio);

  final Dio _dio;

  Future<List<ApodModel>> getApodList({required int count}) async {
    final response = await _dio.get(
      '/planetary/apod',
      queryParameters: {
        'count': count,
      },
    );
    return (response.data as List).map((e) => ApodModel.fromJson(e)).toList();
  }
}
