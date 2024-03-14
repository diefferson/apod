import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

abstract class BasePresenter<ViewContract> implements Disposable {
  late ViewContract view;

  void init() {}

  Future refresh() async {}

  @override
  void dispose() {}
}

abstract class BaseState<T extends StatefulWidget, B extends BasePresenter>
    extends InjectableState<T> {
  late B presenter;

  @override
  @mustCallSuper
  void initState() {
    presenter = get();
    presenter.view = this;
    super.initState();
    presenter.init();
  }
}


