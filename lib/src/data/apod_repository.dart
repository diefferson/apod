import 'package:apod/src/data/api/apod_api.dart';
import 'package:apod/src/domain/model/apod_model.dart';

class ApodRepository {
  ApodRepository(this._api);

  final ApodApi _api;

  Future<List<ApodModel>> getApodList({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return _api.getApodList(startDate: startDate, endDate: endDate);
  }
}
