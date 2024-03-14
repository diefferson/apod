import 'dart:async';

import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:stark/stark.dart';

/// Abstract class for a UseCase
abstract class UseCase<Type, Params> {
  @protected
  Future<Type> run(Params params);

  final ErrorHandler _errorHandler = Stark.get();
  final ErrorService _errorService = Stark.get();
  final LoadingService _loadingService = Stark.get();

  Future<Either<ApodException, Type>> execute({
    Params? params,
    bool withLoading = false,
    bool withError = false,
  }) async {
    return _tryExecute(
      params ?? EmptyParams() as Params,
      withLoading: withLoading,
      withError: withError,
    );
  }

  @protected
  ApodException handleError(ApodException exception) {
    return exception;
  }

  Future<Either<ApodException, Type>> _tryExecute(
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

      return Right(result);
    } on Exception catch (e) {
      if (withLoading) {
        _loadingService.stopLoading();
      }

      final error = handleError(_errorHandler.handle(e));
      if (withError) {
        _errorService.addError(error);
      }

      return Left(error);
    } catch (e) {
      if (withLoading) {
        _loadingService.stopLoading();
      }
      final error = handleError(_errorHandler.handle(e));

      if (withError) {
        _errorService.addError(error);
      }

      return Left(error);
    }
  }
}

extension EitherExtensions<Type> on Either<ApodException, Type> {
  Either<ApodException,Type> onError(Function(ApodException) action) {
    fold(action, (r) {});
    return this;
  }

  Either<ApodException,Type> onSuccess(Function(Type) action) {
    fold((l){}, action);
    return this;
  }
}

class EmptyParams {}
