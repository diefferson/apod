// Mocks generated by Mockito 5.4.4 from annotations
// in apod/test/src/mocks/data_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:apod/src/data/network/app_auth_interceptor.dart' as _i6;
import 'package:apod/src/data/network/app_cache_interceptor.dart' as _i8;
import 'package:apod/src/data/network/dio_client.dart' as _i10;
import 'package:apod/src/data/network/network_error_handler.dart' as _i9;
import 'package:apod/src/domain/exception/apod_exception.dart' as _i3;
import 'package:dio/dio.dart' as _i5;
import 'package:dio/src/dio_mixin.dart' as _i4;
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i11;

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

class _FakeCacheOptions_0 extends _i1.SmartFake implements _i2.CacheOptions {
  _FakeCacheOptions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeApodException_1 extends _i1.SmartFake implements _i3.ApodException {
  _FakeApodException_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptorState_2<T> extends _i1.SmartFake
    implements _i4.InterceptorState<T> {
  _FakeInterceptorState_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUri_3 extends _i1.SmartFake implements Uri {
  _FakeUri_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRequestOptions_4 extends _i1.SmartFake
    implements _i5.RequestOptions {
  _FakeRequestOptions_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppAuthInterceptor].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppAuthInterceptor extends _i1.Mock
    implements _i6.AppAuthInterceptor {
  @override
  _i7.Future<dynamic> onRequest(
    _i5.RequestOptions? options,
    _i5.RequestInterceptorHandler? handler,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #onRequest,
          [
            options,
            handler,
          ],
        ),
        returnValue: _i7.Future<dynamic>.value(),
        returnValueForMissingStub: _i7.Future<dynamic>.value(),
      ) as _i7.Future<dynamic>);

  @override
  void onResponse(
    _i5.Response<dynamic>? response,
    _i5.ResponseInterceptorHandler? handler,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onResponse,
          [
            response,
            handler,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    _i5.DioException? err,
    _i5.ErrorInterceptorHandler? handler,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            err,
            handler,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AppCacheInterceptor].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppCacheInterceptor extends _i1.Mock
    implements _i8.AppCacheInterceptor {
  @override
  _i2.CacheOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeCacheOptions_0(
          this,
          Invocation.getter(#options),
        ),
        returnValueForMissingStub: _FakeCacheOptions_0(
          this,
          Invocation.getter(#options),
        ),
      ) as _i2.CacheOptions);

  @override
  void onResponse(
    _i5.Response<dynamic>? response,
    _i5.ResponseInterceptorHandler? handler,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onResponse,
          [
            response,
            handler,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onRequest(
    _i5.RequestOptions? options,
    _i5.RequestInterceptorHandler? handler,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onRequest,
          [
            options,
            handler,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    _i5.DioException? err,
    _i5.ErrorInterceptorHandler? handler,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            err,
            handler,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [NetworkErrorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkErrorHandler extends _i1.Mock
    implements _i9.NetworkErrorHandler {
  @override
  _i3.ApodException handle(dynamic exception) => (super.noSuchMethod(
        Invocation.method(
          #handle,
          [exception],
        ),
        returnValue: _FakeApodException_1(
          this,
          Invocation.method(
            #handle,
            [exception],
          ),
        ),
        returnValueForMissingStub: _FakeApodException_1(
          this,
          Invocation.method(
            #handle,
            [exception],
          ),
        ),
      ) as _i3.ApodException);
}

/// A class which mocks [DioClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioClient extends _i1.Mock implements _i10.DioClient {}

/// A class which mocks [RequestInterceptorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestInterceptorHandler extends _i1.Mock
    implements _i5.RequestInterceptorHandler {
  @override
  _i7.Future<_i4.InterceptorState<dynamic>> get future => (super.noSuchMethod(
        Invocation.getter(#future),
        returnValue: _i7.Future<_i4.InterceptorState<dynamic>>.value(
            _FakeInterceptorState_2<dynamic>(
          this,
          Invocation.getter(#future),
        )),
        returnValueForMissingStub:
            _i7.Future<_i4.InterceptorState<dynamic>>.value(
                _FakeInterceptorState_2<dynamic>(
          this,
          Invocation.getter(#future),
        )),
      ) as _i7.Future<_i4.InterceptorState<dynamic>>);

  @override
  bool get isCompleted => (super.noSuchMethod(
        Invocation.getter(#isCompleted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void next(_i5.RequestOptions? requestOptions) => super.noSuchMethod(
        Invocation.method(
          #next,
          [requestOptions],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resolve(
    _i5.Response<dynamic>? response, [
    bool? callFollowingResponseInterceptor = false,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #resolve,
          [
            response,
            callFollowingResponseInterceptor,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void reject(
    _i5.DioException? error, [
    bool? callFollowingErrorInterceptor = false,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #reject,
          [
            error,
            callFollowingErrorInterceptor,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [RequestOptions].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestOptions extends _i1.Mock implements _i5.RequestOptions {
  @override
  set sourceStackTrace(StackTrace? _sourceStackTrace) => super.noSuchMethod(
        Invocation.setter(
          #sourceStackTrace,
          _sourceStackTrace,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set data(dynamic _data) => super.noSuchMethod(
        Invocation.setter(
          #data,
          _data,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get path => (super.noSuchMethod(
        Invocation.getter(#path),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#path),
        ),
        returnValueForMissingStub: _i11.dummyValue<String>(
          this,
          Invocation.getter(#path),
        ),
      ) as String);

  @override
  set path(String? _path) => super.noSuchMethod(
        Invocation.setter(
          #path,
          _path,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set cancelToken(_i5.CancelToken? _cancelToken) => super.noSuchMethod(
        Invocation.setter(
          #cancelToken,
          _cancelToken,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set onReceiveProgress(_i5.ProgressCallback? _onReceiveProgress) =>
      super.noSuchMethod(
        Invocation.setter(
          #onReceiveProgress,
          _onReceiveProgress,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set onSendProgress(_i5.ProgressCallback? _onSendProgress) =>
      super.noSuchMethod(
        Invocation.setter(
          #onSendProgress,
          _onSendProgress,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Uri get uri => (super.noSuchMethod(
        Invocation.getter(#uri),
        returnValue: _FakeUri_3(
          this,
          Invocation.getter(#uri),
        ),
        returnValueForMissingStub: _FakeUri_3(
          this,
          Invocation.getter(#uri),
        ),
      ) as Uri);

  @override
  String get method => (super.noSuchMethod(
        Invocation.getter(#method),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#method),
        ),
        returnValueForMissingStub: _i11.dummyValue<String>(
          this,
          Invocation.getter(#method),
        ),
      ) as String);

  @override
  set method(String? _method) => super.noSuchMethod(
        Invocation.setter(
          #method,
          _method,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get preserveHeaderCase => (super.noSuchMethod(
        Invocation.getter(#preserveHeaderCase),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set preserveHeaderCase(bool? _preserveHeaderCase) => super.noSuchMethod(
        Invocation.setter(
          #preserveHeaderCase,
          _preserveHeaderCase,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.ResponseType get responseType => (super.noSuchMethod(
        Invocation.getter(#responseType),
        returnValue: _i5.ResponseType.json,
        returnValueForMissingStub: _i5.ResponseType.json,
      ) as _i5.ResponseType);

  @override
  set responseType(_i5.ResponseType? _responseType) => super.noSuchMethod(
        Invocation.setter(
          #responseType,
          _responseType,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.ValidateStatus get validateStatus => (super.noSuchMethod(
        Invocation.getter(#validateStatus),
        returnValue: (int? status) => false,
        returnValueForMissingStub: (int? status) => false,
      ) as _i5.ValidateStatus);

  @override
  set validateStatus(_i5.ValidateStatus? _validateStatus) => super.noSuchMethod(
        Invocation.setter(
          #validateStatus,
          _validateStatus,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get receiveDataWhenStatusError => (super.noSuchMethod(
        Invocation.getter(#receiveDataWhenStatusError),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set receiveDataWhenStatusError(bool? _receiveDataWhenStatusError) =>
      super.noSuchMethod(
        Invocation.setter(
          #receiveDataWhenStatusError,
          _receiveDataWhenStatusError,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, dynamic> get extra => (super.noSuchMethod(
        Invocation.getter(#extra),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  set extra(Map<String, dynamic>? _extra) => super.noSuchMethod(
        Invocation.setter(
          #extra,
          _extra,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get followRedirects => (super.noSuchMethod(
        Invocation.getter(#followRedirects),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set followRedirects(bool? _followRedirects) => super.noSuchMethod(
        Invocation.setter(
          #followRedirects,
          _followRedirects,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get maxRedirects => (super.noSuchMethod(
        Invocation.getter(#maxRedirects),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  set maxRedirects(int? _maxRedirects) => super.noSuchMethod(
        Invocation.setter(
          #maxRedirects,
          _maxRedirects,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get persistentConnection => (super.noSuchMethod(
        Invocation.getter(#persistentConnection),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set persistentConnection(bool? _persistentConnection) => super.noSuchMethod(
        Invocation.setter(
          #persistentConnection,
          _persistentConnection,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set requestEncoder(_i5.RequestEncoder? _requestEncoder) => super.noSuchMethod(
        Invocation.setter(
          #requestEncoder,
          _requestEncoder,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set responseDecoder(_i5.ResponseDecoder? _responseDecoder) =>
      super.noSuchMethod(
        Invocation.setter(
          #responseDecoder,
          _responseDecoder,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.ListFormat get listFormat => (super.noSuchMethod(
        Invocation.getter(#listFormat),
        returnValue: _i5.ListFormat.csv,
        returnValueForMissingStub: _i5.ListFormat.csv,
      ) as _i5.ListFormat);

  @override
  set listFormat(_i5.ListFormat? _listFormat) => super.noSuchMethod(
        Invocation.setter(
          #listFormat,
          _listFormat,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, dynamic> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  set headers(Map<String, dynamic>? headers) => super.noSuchMethod(
        Invocation.setter(
          #headers,
          headers,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set sendTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #sendTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set receiveTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #receiveTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set contentType(String? contentType) => super.noSuchMethod(
        Invocation.setter(
          #contentType,
          contentType,
        ),
        returnValueForMissingStub: null,
      );

  @override
  Map<String, dynamic> get queryParameters => (super.noSuchMethod(
        Invocation.getter(#queryParameters),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  set queryParameters(Map<String, dynamic>? _queryParameters) =>
      super.noSuchMethod(
        Invocation.setter(
          #queryParameters,
          _queryParameters,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get baseUrl => (super.noSuchMethod(
        Invocation.getter(#baseUrl),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#baseUrl),
        ),
        returnValueForMissingStub: _i11.dummyValue<String>(
          this,
          Invocation.getter(#baseUrl),
        ),
      ) as String);

  @override
  set baseUrl(String? value) => super.noSuchMethod(
        Invocation.setter(
          #baseUrl,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set connectTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #connectTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.RequestOptions copyWith({
    String? method,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    Duration? connectTimeout,
    dynamic data,
    String? path,
    Map<String, dynamic>? queryParameters,
    String? baseUrl,
    _i5.ProgressCallback? onReceiveProgress,
    _i5.ProgressCallback? onSendProgress,
    _i5.CancelToken? cancelToken,
    Map<String, dynamic>? extra,
    Map<String, dynamic>? headers,
    bool? preserveHeaderCase,
    _i5.ResponseType? responseType,
    String? contentType,
    _i5.ValidateStatus? validateStatus,
    bool? receiveDataWhenStatusError,
    bool? followRedirects,
    int? maxRedirects,
    bool? persistentConnection,
    _i5.RequestEncoder? requestEncoder,
    _i5.ResponseDecoder? responseDecoder,
    _i5.ListFormat? listFormat,
    bool? setRequestContentTypeWhenNoPayload,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #copyWith,
          [],
          {
            #method: method,
            #sendTimeout: sendTimeout,
            #receiveTimeout: receiveTimeout,
            #connectTimeout: connectTimeout,
            #data: data,
            #path: path,
            #queryParameters: queryParameters,
            #baseUrl: baseUrl,
            #onReceiveProgress: onReceiveProgress,
            #onSendProgress: onSendProgress,
            #cancelToken: cancelToken,
            #extra: extra,
            #headers: headers,
            #preserveHeaderCase: preserveHeaderCase,
            #responseType: responseType,
            #contentType: contentType,
            #validateStatus: validateStatus,
            #receiveDataWhenStatusError: receiveDataWhenStatusError,
            #followRedirects: followRedirects,
            #maxRedirects: maxRedirects,
            #persistentConnection: persistentConnection,
            #requestEncoder: requestEncoder,
            #responseDecoder: responseDecoder,
            #listFormat: listFormat,
            #setRequestContentTypeWhenNoPayload:
                setRequestContentTypeWhenNoPayload,
          },
        ),
        returnValue: _FakeRequestOptions_4(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #method: method,
              #sendTimeout: sendTimeout,
              #receiveTimeout: receiveTimeout,
              #connectTimeout: connectTimeout,
              #data: data,
              #path: path,
              #queryParameters: queryParameters,
              #baseUrl: baseUrl,
              #onReceiveProgress: onReceiveProgress,
              #onSendProgress: onSendProgress,
              #cancelToken: cancelToken,
              #extra: extra,
              #headers: headers,
              #preserveHeaderCase: preserveHeaderCase,
              #responseType: responseType,
              #contentType: contentType,
              #validateStatus: validateStatus,
              #receiveDataWhenStatusError: receiveDataWhenStatusError,
              #followRedirects: followRedirects,
              #maxRedirects: maxRedirects,
              #persistentConnection: persistentConnection,
              #requestEncoder: requestEncoder,
              #responseDecoder: responseDecoder,
              #listFormat: listFormat,
              #setRequestContentTypeWhenNoPayload:
                  setRequestContentTypeWhenNoPayload,
            },
          ),
        ),
        returnValueForMissingStub: _FakeRequestOptions_4(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #method: method,
              #sendTimeout: sendTimeout,
              #receiveTimeout: receiveTimeout,
              #connectTimeout: connectTimeout,
              #data: data,
              #path: path,
              #queryParameters: queryParameters,
              #baseUrl: baseUrl,
              #onReceiveProgress: onReceiveProgress,
              #onSendProgress: onSendProgress,
              #cancelToken: cancelToken,
              #extra: extra,
              #headers: headers,
              #preserveHeaderCase: preserveHeaderCase,
              #responseType: responseType,
              #contentType: contentType,
              #validateStatus: validateStatus,
              #receiveDataWhenStatusError: receiveDataWhenStatusError,
              #followRedirects: followRedirects,
              #maxRedirects: maxRedirects,
              #persistentConnection: persistentConnection,
              #requestEncoder: requestEncoder,
              #responseDecoder: responseDecoder,
              #listFormat: listFormat,
              #setRequestContentTypeWhenNoPayload:
                  setRequestContentTypeWhenNoPayload,
            },
          ),
        ),
      ) as _i5.RequestOptions);
}
