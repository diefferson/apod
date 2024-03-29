// Mocks generated by Mockito 5.4.4 from annotations
// in apod/test/src/mocks/app_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:apod/src/app/app_flavor.dart' as _i3;
import 'package:apod/src/app/configurators/stark_configurator.dart' as _i5;
import 'package:apod/src/app/environment.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;

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

/// A class which mocks [Environment].
///
/// See the documentation for Mockito's code generation for more information.
class MockEnvironment extends _i1.Mock implements _i2.Environment {
  @override
  _i3.AppEnv get flavor => (super.noSuchMethod(
        Invocation.getter(#flavor),
        returnValue: _i3.AppEnv.prod,
        returnValueForMissingStub: _i3.AppEnv.prod,
      ) as _i3.AppEnv);

  @override
  String get baseUrl => (super.noSuchMethod(
        Invocation.getter(#baseUrl),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#baseUrl),
        ),
        returnValueForMissingStub: _i4.dummyValue<String>(
          this,
          Invocation.getter(#baseUrl),
        ),
      ) as String);

  @override
  String get apiKey => (super.noSuchMethod(
        Invocation.getter(#apiKey),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#apiKey),
        ),
        returnValueForMissingStub: _i4.dummyValue<String>(
          this,
          Invocation.getter(#apiKey),
        ),
      ) as String);
}

/// A class which mocks [StarkConfigurator].
///
/// See the documentation for Mockito's code generation for more information.
class MockStarkConfigurator extends _i1.Mock implements _i5.StarkConfigurator {
  @override
  _i3.AppEnv get env => (super.noSuchMethod(
        Invocation.getter(#env),
        returnValue: _i3.AppEnv.prod,
        returnValueForMissingStub: _i3.AppEnv.prod,
      ) as _i3.AppEnv);

  @override
  _i6.Future<dynamic> configure() => (super.noSuchMethod(
        Invocation.method(
          #configure,
          [],
        ),
        returnValue: _i6.Future<dynamic>.value(),
        returnValueForMissingStub: _i6.Future<dynamic>.value(),
      ) as _i6.Future<dynamic>);
}
