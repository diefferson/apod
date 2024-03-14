import 'package:apod/src/data/apod_repository.dart';
import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/domain/use_cases/use_case.dart';

class GetApodItemsUseCase
    extends UseCase<List<ApodModel>, GetApodItemsUseCaseParams> {
  GetApodItemsUseCase(this._repository);

  final ApodRepository _repository;

  @override
  Future<List<ApodModel>> run(GetApodItemsUseCaseParams params) async {
    final list = await _repository.getApodList(
      startDate: params.startDate,
      endDate: params.endDate,
    );

    list.sort((a, b) => b.date.compareTo(a.date));
    return list;
  }
}

class GetApodItemsUseCaseParams {
  GetApodItemsUseCaseParams({required this.startDate, required this.endDate});

  final DateTime startDate;
  final DateTime endDate;
}
