// Mocks generated by Mockito 5.4.4 from annotations
// in apod/test/src/mocks/presentation_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i9;

import 'package:apod/src/domain/model/apod_model.dart' as _i6;
import 'package:apod/src/presentation/pages/details/details_page.dart' as _i11;
import 'package:apod/src/presentation/pages/home/home_page.dart' as _i3;
import 'package:apod/src/presentation/pages/home/home_page_actions.dart' as _i8;
import 'package:apod/src/presentation/pages/home/home_page_presenter.dart'
    as _i2;
import 'package:flutter/foundation.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeHomePagePresenter_0 extends _i1.SmartFake
    implements _i2.HomePagePresenter {
  _FakeHomePagePresenter_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHomePage_1 extends _i1.SmartFake implements _i3.HomePage {
  _FakeHomePage_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeBuildContext_2 extends _i1.SmartFake implements _i4.BuildContext {
  _FakeBuildContext_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWidget_3 extends _i1.SmartFake implements _i4.Widget {
  _FakeWidget_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeDiagnosticsNode_4 extends _i1.SmartFake
    implements _i4.DiagnosticsNode {
  _FakeDiagnosticsNode_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({
    _i5.TextTreeConfiguration? parentConfiguration,
    _i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info,
  }) =>
      super.toString();
}

class _FakeApodModel_5 extends _i1.SmartFake implements _i6.ApodModel {
  _FakeApodModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeState_6<T extends _i4.StatefulWidget> extends _i1.SmartFake
    implements _i4.State<T> {
  _FakeState_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeStatefulElement_7 extends _i1.SmartFake
    implements _i4.StatefulElement {
  _FakeStatefulElement_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

/// A class which mocks [HomePagePresenter].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomePagePresenter extends _i1.Mock implements _i2.HomePagePresenter {
  @override
  _i7.Stream<List<_i6.ApodModel>> get items => (super.noSuchMethod(
        Invocation.getter(#items),
        returnValue: _i7.Stream<List<_i6.ApodModel>>.empty(),
        returnValueForMissingStub: _i7.Stream<List<_i6.ApodModel>>.empty(),
      ) as _i7.Stream<List<_i6.ApodModel>>);

  @override
  set view(dynamic _view) => super.noSuchMethod(
        Invocation.setter(
          #view,
          _view,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void init() => super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<dynamic> refresh() => (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValue: _i7.Future<dynamic>.value(),
        returnValueForMissingStub: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);

  @override
  void loadMore() => super.noSuchMethod(
        Invocation.method(
          #loadMore,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [HomePageActions].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomePageActions extends _i1.Mock implements _i8.HomePageActions {
  @override
  _i2.HomePagePresenter get presenter => (super.noSuchMethod(
        Invocation.getter(#presenter),
        returnValue: _FakeHomePagePresenter_0(
          this,
          Invocation.getter(#presenter),
        ),
        returnValueForMissingStub: _FakeHomePagePresenter_0(
          this,
          Invocation.getter(#presenter),
        ),
      ) as _i2.HomePagePresenter);

  @override
  set presenter(_i2.HomePagePresenter? _presenter) => super.noSuchMethod(
        Invocation.setter(
          #presenter,
          _presenter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.HomePage get widget => (super.noSuchMethod(
        Invocation.getter(#widget),
        returnValue: _FakeHomePage_1(
          this,
          Invocation.getter(#widget),
        ),
        returnValueForMissingStub: _FakeHomePage_1(
          this,
          Invocation.getter(#widget),
        ),
      ) as _i3.HomePage);

  @override
  _i4.BuildContext get context => (super.noSuchMethod(
        Invocation.getter(#context),
        returnValue: _FakeBuildContext_2(
          this,
          Invocation.getter(#context),
        ),
        returnValueForMissingStub: _FakeBuildContext_2(
          this,
          Invocation.getter(#context),
        ),
      ) as _i4.BuildContext);

  @override
  bool get mounted => (super.noSuchMethod(
        Invocation.getter(#mounted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i7.Future<dynamic> goToDetails(_i6.ApodModel? apodModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #goToDetails,
          [apodModel],
        ),
        returnValue: _i7.Future<dynamic>.value(),
        returnValueForMissingStub: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);

  @override
  void initState() => super.noSuchMethod(
        Invocation.method(
          #initState,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didUpdateWidget(_i3.HomePage? oldWidget) => super.noSuchMethod(
        Invocation.method(
          #didUpdateWidget,
          [oldWidget],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void reassemble() => super.noSuchMethod(
        Invocation.method(
          #reassemble,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setState(_i9.VoidCallback? fn) => super.noSuchMethod(
        Invocation.method(
          #setState,
          [fn],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void deactivate() => super.noSuchMethod(
        Invocation.method(
          #deactivate,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void activate() => super.noSuchMethod(
        Invocation.method(
          #activate,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Widget build(_i4.BuildContext? context) => (super.noSuchMethod(
        Invocation.method(
          #build,
          [context],
        ),
        returnValue: _FakeWidget_3(
          this,
          Invocation.method(
            #build,
            [context],
          ),
        ),
        returnValueForMissingStub: _FakeWidget_3(
          this,
          Invocation.method(
            #build,
            [context],
          ),
        ),
      ) as _i4.Widget);

  @override
  void didChangeDependencies() => super.noSuchMethod(
        Invocation.method(
          #didChangeDependencies,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void debugFillProperties(_i5.DiagnosticPropertiesBuilder? properties) =>
      super.noSuchMethod(
        Invocation.method(
          #debugFillProperties,
          [properties],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();

  @override
  String toStringShort() => (super.noSuchMethod(
        Invocation.method(
          #toStringShort,
          [],
        ),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShort,
            [],
          ),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShort,
            [],
          ),
        ),
      ) as String);

  @override
  _i4.DiagnosticsNode toDiagnosticsNode({
    String? name,
    _i5.DiagnosticsTreeStyle? style,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toDiagnosticsNode,
          [],
          {
            #name: name,
            #style: style,
          },
        ),
        returnValue: _FakeDiagnosticsNode_4(
          this,
          Invocation.method(
            #toDiagnosticsNode,
            [],
            {
              #name: name,
              #style: style,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDiagnosticsNode_4(
          this,
          Invocation.method(
            #toDiagnosticsNode,
            [],
            {
              #name: name,
              #style: style,
            },
          ),
        ),
      ) as _i4.DiagnosticsNode);

  @override
  T get<T>({
    String? named,
    Map<String, dynamic>? params,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #named: named,
            #params: params,
          },
        ),
        returnValue: _i10.dummyValue<T>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #named: named,
              #params: params,
            },
          ),
        ),
        returnValueForMissingStub: _i10.dummyValue<T>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #named: named,
              #params: params,
            },
          ),
        ),
      ) as T);
}

/// A class which mocks [DetailsPage].
///
/// See the documentation for Mockito's code generation for more information.
class MockDetailsPage extends _i1.Mock implements _i11.DetailsPage {
  @override
  _i6.ApodModel get apod => (super.noSuchMethod(
        Invocation.getter(#apod),
        returnValue: _FakeApodModel_5(
          this,
          Invocation.getter(#apod),
        ),
        returnValueForMissingStub: _FakeApodModel_5(
          this,
          Invocation.getter(#apod),
        ),
      ) as _i6.ApodModel);

  @override
  _i4.State<_i11.DetailsPage> createState() => (super.noSuchMethod(
        Invocation.method(
          #createState,
          [],
        ),
        returnValue: _FakeState_6<_i11.DetailsPage>(
          this,
          Invocation.method(
            #createState,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeState_6<_i11.DetailsPage>(
          this,
          Invocation.method(
            #createState,
            [],
          ),
        ),
      ) as _i4.State<_i11.DetailsPage>);

  @override
  _i4.StatefulElement createElement() => (super.noSuchMethod(
        Invocation.method(
          #createElement,
          [],
        ),
        returnValue: _FakeStatefulElement_7(
          this,
          Invocation.method(
            #createElement,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeStatefulElement_7(
          this,
          Invocation.method(
            #createElement,
            [],
          ),
        ),
      ) as _i4.StatefulElement);

  @override
  String toStringShort() => (super.noSuchMethod(
        Invocation.method(
          #toStringShort,
          [],
        ),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShort,
            [],
          ),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShort,
            [],
          ),
        ),
      ) as String);

  @override
  void debugFillProperties(_i5.DiagnosticPropertiesBuilder? properties) =>
      super.noSuchMethod(
        Invocation.method(
          #debugFillProperties,
          [properties],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String toStringShallow({
    String? joiner = r', ',
    _i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.debug,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toStringShallow,
          [],
          {
            #joiner: joiner,
            #minLevel: minLevel,
          },
        ),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShallow,
            [],
            {
              #joiner: joiner,
              #minLevel: minLevel,
            },
          ),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShallow,
            [],
            {
              #joiner: joiner,
              #minLevel: minLevel,
            },
          ),
        ),
      ) as String);

  @override
  String toStringDeep({
    String? prefixLineOne = r'',
    String? prefixOtherLines,
    _i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.debug,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toStringDeep,
          [],
          {
            #prefixLineOne: prefixLineOne,
            #prefixOtherLines: prefixOtherLines,
            #minLevel: minLevel,
          },
        ),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringDeep,
            [],
            {
              #prefixLineOne: prefixLineOne,
              #prefixOtherLines: prefixOtherLines,
              #minLevel: minLevel,
            },
          ),
        ),
        returnValueForMissingStub: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #toStringDeep,
            [],
            {
              #prefixLineOne: prefixLineOne,
              #prefixOtherLines: prefixOtherLines,
              #minLevel: minLevel,
            },
          ),
        ),
      ) as String);

  @override
  _i4.DiagnosticsNode toDiagnosticsNode({
    String? name,
    _i5.DiagnosticsTreeStyle? style,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toDiagnosticsNode,
          [],
          {
            #name: name,
            #style: style,
          },
        ),
        returnValue: _FakeDiagnosticsNode_4(
          this,
          Invocation.method(
            #toDiagnosticsNode,
            [],
            {
              #name: name,
              #style: style,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDiagnosticsNode_4(
          this,
          Invocation.method(
            #toDiagnosticsNode,
            [],
            {
              #name: name,
              #style: style,
            },
          ),
        ),
      ) as _i4.DiagnosticsNode);

  @override
  List<_i4.DiagnosticsNode> debugDescribeChildren() => (super.noSuchMethod(
        Invocation.method(
          #debugDescribeChildren,
          [],
        ),
        returnValue: <_i4.DiagnosticsNode>[],
        returnValueForMissingStub: <_i4.DiagnosticsNode>[],
      ) as List<_i4.DiagnosticsNode>);

  @override
  String toString({_i4.DiagnosticLevel? minLevel = _i4.DiagnosticLevel.info}) =>
      super.toString();
}

/// A class which mocks [NavigatorObserver].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigatorObserver extends _i1.Mock implements _i4.NavigatorObserver {
  @override
  void didPush(
    _i4.Route<dynamic>? route,
    _i4.Route<dynamic>? previousRoute,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #didPush,
          [
            route,
            previousRoute,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didPop(
    _i4.Route<dynamic>? route,
    _i4.Route<dynamic>? previousRoute,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #didPop,
          [
            route,
            previousRoute,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didRemove(
    _i4.Route<dynamic>? route,
    _i4.Route<dynamic>? previousRoute,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #didRemove,
          [
            route,
            previousRoute,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didReplace({
    _i4.Route<dynamic>? newRoute,
    _i4.Route<dynamic>? oldRoute,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #didReplace,
          [],
          {
            #newRoute: newRoute,
            #oldRoute: oldRoute,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didStartUserGesture(
    _i4.Route<dynamic>? route,
    _i4.Route<dynamic>? previousRoute,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #didStartUserGesture,
          [
            route,
            previousRoute,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void didStopUserGesture() => super.noSuchMethod(
        Invocation.method(
          #didStopUserGesture,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
