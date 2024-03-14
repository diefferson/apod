import 'dart:async';

import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:stark/stark.dart';

class ErrorService implements Disposable {
  ErrorService()
      : _errorController = StreamController<ApodException?>.broadcast()
          ..add(null);

  final StreamController<ApodException?> _errorController;

  Stream<ApodException?> get error => _errorController.stream;

  void addError(ApodException error) => _errorController.add(error);

  void dismissError() => _errorController.add(null);

  static void showException(ApodException exception) {
    Stark.get<ErrorService>().addError(exception);
  }

  static void dismiss() {
    Stark.get<ErrorService>().dismissError();
  }

  static void show({required String message, String? title}) {
    final exception = ApodException(
      errorCode: '0',
      message: message,
      title: title,
    );
    showException(exception);
  }

  @override
  void dispose() {
    _errorController.close();
  }
}
