// Mocks generated by Mockito 5.4.4 from annotations
// in apod/test/src/mocks/domain_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:apod/src/domain/exception/apod_exception.dart' as _i4;
import 'package:apod/src/domain/exception/error_handler.dart' as _i6;
import 'package:apod/src/domain/services/error_service.dart' as _i7;
import 'package:apod/src/domain/services/loading_service.dart' as _i8;
import 'package:apod/src/domain/use_cases/use_case.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;

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

class _FakeFuture_0<T> extends _i1.SmartFake implements _i2.Future<T> {
  _FakeFuture_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUseCase_1<Type1, Params1> extends _i1.SmartFake
    implements _i3.UseCase<Type1, Params1> {
  _FakeUseCase_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApodException_2 extends _i1.SmartFake implements _i4.ApodException {
  _FakeApodException_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUseCase<Type, Params> extends _i1.Mock
    implements _i3.UseCase<Type, Params> {
  @override
  _i2.Future<Type> run(Params? params) => (super.noSuchMethod(
        Invocation.method(
          #run,
          [params],
        ),
        returnValue: _i5.ifNotNull(
              _i5.dummyValueOrNull<Type>(
                this,
                Invocation.method(
                  #run,
                  [params],
                ),
              ),
              (Type v) => _i2.Future<Type>.value(v),
            ) ??
            _FakeFuture_0<Type>(
              this,
              Invocation.method(
                #run,
                [params],
              ),
            ),
        returnValueForMissingStub: _i5.ifNotNull(
              _i5.dummyValueOrNull<Type>(
                this,
                Invocation.method(
                  #run,
                  [params],
                ),
              ),
              (Type v) => _i2.Future<Type>.value(v),
            ) ??
            _FakeFuture_0<Type>(
              this,
              Invocation.method(
                #run,
                [params],
              ),
            ),
      ) as _i2.Future<Type>);

  @override
  _i3.UseCase<Type, Params> execute({
    Params? params,
    bool? withLoading = false,
    bool? withError = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {
            #params: params,
            #withLoading: withLoading,
            #withError: withError,
          },
        ),
        returnValue: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #execute,
            [],
            {
              #params: params,
              #withLoading: withLoading,
              #withError: withError,
            },
          ),
        ),
        returnValueForMissingStub: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #execute,
            [],
            {
              #params: params,
              #withLoading: withLoading,
              #withError: withError,
            },
          ),
        ),
      ) as _i3.UseCase<Type, Params>);

  @override
  _i4.ApodException handleError(_i4.ApodException? exception) =>
      (super.noSuchMethod(
        Invocation.method(
          #handleError,
          [exception],
        ),
        returnValue: _FakeApodException_2(
          this,
          Invocation.method(
            #handleError,
            [exception],
          ),
        ),
        returnValueForMissingStub: _FakeApodException_2(
          this,
          Invocation.method(
            #handleError,
            [exception],
          ),
        ),
      ) as _i4.ApodException);

  @override
  _i3.UseCase<Type, Params> onError(
          dynamic Function(_i4.ApodException)? action) =>
      (super.noSuchMethod(
        Invocation.method(
          #onError,
          [action],
        ),
        returnValue: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #onError,
            [action],
          ),
        ),
        returnValueForMissingStub: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #onError,
            [action],
          ),
        ),
      ) as _i3.UseCase<Type, Params>);

  @override
  _i3.UseCase<Type, Params> onSuccess(dynamic Function(Type)? action) =>
      (super.noSuchMethod(
        Invocation.method(
          #onSuccess,
          [action],
        ),
        returnValue: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #onSuccess,
            [action],
          ),
        ),
        returnValueForMissingStub: _FakeUseCase_1<Type, Params>(
          this,
          Invocation.method(
            #onSuccess,
            [action],
          ),
        ),
      ) as _i3.UseCase<Type, Params>);

  @override
  _i2.Future<Type> asFuture({Type Function(_i4.ApodException)? errorParser}) =>
      (super.noSuchMethod(
        Invocation.method(
          #asFuture,
          [],
          {#errorParser: errorParser},
        ),
        returnValue: _i5.ifNotNull(
              _i5.dummyValueOrNull<Type>(
                this,
                Invocation.method(
                  #asFuture,
                  [],
                  {#errorParser: errorParser},
                ),
              ),
              (Type v) => _i2.Future<Type>.value(v),
            ) ??
            _FakeFuture_0<Type>(
              this,
              Invocation.method(
                #asFuture,
                [],
                {#errorParser: errorParser},
              ),
            ),
        returnValueForMissingStub: _i5.ifNotNull(
              _i5.dummyValueOrNull<Type>(
                this,
                Invocation.method(
                  #asFuture,
                  [],
                  {#errorParser: errorParser},
                ),
              ),
              (Type v) => _i2.Future<Type>.value(v),
            ) ??
            _FakeFuture_0<Type>(
              this,
              Invocation.method(
                #asFuture,
                [],
                {#errorParser: errorParser},
              ),
            ),
      ) as _i2.Future<Type>);

  @override
  _i2.Stream<Type> asStream({Type Function(_i4.ApodException)? errorParser}) =>
      (super.noSuchMethod(
        Invocation.method(
          #asStream,
          [],
          {#errorParser: errorParser},
        ),
        returnValue: _i2.Stream<Type>.empty(),
        returnValueForMissingStub: _i2.Stream<Type>.empty(),
      ) as _i2.Stream<Type>);
}

/// A class which mocks [ErrorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockErrorHandler extends _i1.Mock implements _i6.ErrorHandler {
  @override
  _i4.ApodException handle(dynamic exception) => (super.noSuchMethod(
        Invocation.method(
          #handle,
          [exception],
        ),
        returnValue: _FakeApodException_2(
          this,
          Invocation.method(
            #handle,
            [exception],
          ),
        ),
        returnValueForMissingStub: _FakeApodException_2(
          this,
          Invocation.method(
            #handle,
            [exception],
          ),
        ),
      ) as _i4.ApodException);
}

/// A class which mocks [ErrorService].
///
/// See the documentation for Mockito's code generation for more information.
class MockErrorService extends _i1.Mock implements _i7.ErrorService {
  @override
  _i2.Stream<_i4.ApodException?> get error => (super.noSuchMethod(
        Invocation.getter(#error),
        returnValue: _i2.Stream<_i4.ApodException?>.empty(),
        returnValueForMissingStub: _i2.Stream<_i4.ApodException?>.empty(),
      ) as _i2.Stream<_i4.ApodException?>);

  @override
  void addError(_i4.ApodException? error) => super.noSuchMethod(
        Invocation.method(
          #addError,
          [error],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dismissError() => super.noSuchMethod(
        Invocation.method(
          #dismissError,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [LoadingService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoadingService extends _i1.Mock implements _i8.LoadingService {
  @override
  _i2.Stream<bool> get loading => (super.noSuchMethod(
        Invocation.getter(#loading),
        returnValue: _i2.Stream<bool>.empty(),
        returnValueForMissingStub: _i2.Stream<bool>.empty(),
      ) as _i2.Stream<bool>);

  @override
  void startLoading() => super.noSuchMethod(
        Invocation.method(
          #startLoading,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void stopLoading() => super.noSuchMethod(
        Invocation.method(
          #stopLoading,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
