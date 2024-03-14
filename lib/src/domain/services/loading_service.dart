import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:stark/stark.dart';

class LoadingService implements Disposable {
  LoadingService() : _loading = BehaviorSubject<bool>()..add(false);
  final BehaviorSubject<bool> _loading;

  Stream<bool> get loading => _loading.stream;

  void startLoading() => _loading.add(true);

  void stopLoading() => _loading.add(false);

  static void showLoading() {
    Stark.get<LoadingService>().startLoading();
  }

  static void dismissLoading() {
    Stark.get<LoadingService>().stopLoading();
  }

  @override
  void dispose() {
    _loading.close();
  }
}
