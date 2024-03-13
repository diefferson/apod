import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LoadingService {
  factory LoadingService() {
    _instance ??= LoadingService._internalConstructor();
    return _instance!;
  }

  LoadingService._internalConstructor()
      : _loading = BehaviorSubject<bool>()..add(false);

  static LoadingService? _instance;
  BehaviorSubject<bool> _loading;
  Stream<bool> get loading => _loading.stream;

  void startLoading() => _loading.add(true);
  void stopLoading() => _loading.add(false);

  static void showLoading() => LoadingService().startLoading();
  static void dismissLoading() => LoadingService().stopLoading();
}
