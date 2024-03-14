import 'dart:async';

import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:apod/src/domain/services/error_service.dart';
import 'package:apod/src/domain/services/loading_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:stark/stark.dart';

/// Abstract class for a UseCase
abstract class UseCase<T, Params> {
  @protected
  Future<T> run(Params params);

  final ErrorHandler _errorHandler = Stark.get();
  final ErrorService _errorService = Stark.get();
  final LoadingService _loadingService = Stark.get();

  Future<Either<ApodException, T>> execute({
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

  Future<Either<ApodException, T>> _tryExecute(
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

extension EitherExtensions<T> on Future<Either<ApodException, T>> {
  Future<Either<ApodException, T>> onError(
      Function(ApodException) action) async {
    final result = await this;
    if (result.isLeft()) {
      result.fold(action, (r) {});
    }

    return result;
  }

  Future<Either<ApodException, T>> onSuccess(Function(T) action) async {
    final result = await this;
    if (result.isRight()) {
      result.fold((l) {}, action);
    }

    return result;
  }
}

class EmptyParams {}
