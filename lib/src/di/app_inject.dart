import 'package:apod/src/app/environment.dart';
import 'package:apod/src/data/api/apod_api.dart';
import 'package:apod/src/data/apod_repository.dart';
import 'package:apod/src/data/network/dio_client.dart';
import 'package:apod/src/data/network/network_error_handler.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:apod/src/domain/use_cases/get_apod_items_use_case.dart';
import 'package:apod/src/presentation/pages/home/home_page_presenter.dart';
import 'package:stark/stark.dart';

class AppInject {
  AppInject({
    required this.environment,
    required this.cachePath,
  });

  final Environment environment;
  final String cachePath;

  List<Set<Bind>> binds() => [
        dataBinds(),
        domainBinds(),
        presentationBinds(),
      ];

  Set<Bind> dataBinds() => {
        single((i) => environment),
        single((i) => DioClient.getCacheOptions(cachePath)),
        single((i) => DioClient.getClient(
            environment: environment, cachePath: cachePath)),
        single<ErrorHandler>((i) => NetworkErrorHandler()),
        single((i) => ApodApi(i.get())),
        single((i) => ApodRepository(i.get())),
      };

  Set<Bind> domainBinds() => <Bind>{
        single((i) => ErrorService()),
        single((i) => LoadingService()),
        factory((i) => GetApodItemsUseCase(i.get())),
      };

  Set<Bind> presentationBinds() => {
        single((i) => HomePagePresenter(i.get())),
      };
}
