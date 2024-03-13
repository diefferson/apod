import 'dart:async';

import 'package:apod/src/domain/exception/apod_exception.dart';


class ErrorService {
  factory ErrorService() {
    _instance ??= ErrorService._internalConstructor();
    return _instance!;
  }

  ErrorService._internalConstructor()
      : _errorController = StreamController<ApodException?>.broadcast()
    ..add(null);

  static ErrorService? _instance;
  StreamController<ApodException?> _errorController;
  Stream<ApodException?> get error => _errorController.stream;

  void addError(ApodException error) => _errorController.add(error);
  void dismissError() => _errorController.add(null);

  static void showException(ApodException exception) =>
      ErrorService().addError(exception);
  static void dismiss() => ErrorService().dismissError();

  static void show({required String message, String? title}) {
    final exception =
    ApodException(errorCode: '0', message: message, title: title);
    ErrorService().addError(exception);
  }
}
