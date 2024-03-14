import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/domain/use_cases/get_apod_items_use_case.dart';
import 'package:apod/src/domain/use_cases/use_case.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<UseCase>(),
  MockSpec<ErrorHandler>(),
  MockSpec<ErrorService>(),
  MockSpec<LoadingService>(),
  MockSpec<GetApodItemsUseCase>(),
])
void main() {}
