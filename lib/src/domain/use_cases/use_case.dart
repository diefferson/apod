import 'dart:async';

import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stark/stark.dart';

/// Abstract class for a UseCase
abstract class UseCase<Type, Params> {
  @protected
  Future<Type> run(Params params);

  Function(Type) _onSuccess = (_) {};
  Function(ApodException) _onError = (_) {};
  final ErrorHandler _errorHandler = Stark.get();
  final ErrorService _errorService = Stark.get();
  final LoadingService _loadingService = Stark.get();

  UseCase<Type, Params> execute({
    Params? params,
    bool withLoading = false,
    bool withError = false,
  }) {
    _tryExecute(
      params ?? None() as Params,
      withLoading: withLoading,
      withError: withError,
    );
    return this;
  }

  @protected
  ApodException handleError(ApodException exception) {
    return exception;
  }

  UseCase<Type, Params> onError(Function(ApodException) action) {
    _onError = action;
    return this;
  }

  UseCase<Type, Params> onSuccess(Function(Type) action) {
    _onSuccess = action;
    return this;
  }

  Future<Type> asFuture({
    Type Function(ApodException)? errorParser,
  }) {
    final Completer<Type> completer = Completer();
    onSuccess((data) {
      completer.complete(data);
    }).onError((e) {
      if (errorParser != null) {
        completer.complete(errorParser(e));
      } else {
        completer.completeError(e);
      }
    });
    return completer.future;
  }

  Stream<Type> asStream({
    Type Function(ApodException)? errorParser,
  }) {
    return Stream.fromFuture(asFuture(errorParser: errorParser));
  }

  Future _tryExecute(
    Params params, {
    bool withLoading = false,
    bool withError = false,
  }) async {
    try {
      if (withLoading) {
        _loadingService.startLoading();
      }
      final result = await run(params);
      if (withLoading) {
        _loadingService.stopLoading();
      }

      _onSuccess(result);
    } on Exception catch (e) {
      if (withLoading) {
        _loadingService.stopLoading();
      }

      final error = handleError(_errorHandler.handle(e));
      if (withError) {
        _errorService.addError(error);
      }

      _onError(error);
    } catch (e) {
      if (withLoading) {
        _loadingService.stopLoading();
      }
      final error = handleError(_errorHandler.handle(e));

      if (withError) {
        _errorService.addError(error);
      }

      _onError(error);
    }
  }
}

class None {}
