import 'package:apod/src/domain/exception/apod_exception.dart';

abstract class ErrorHandler {
  ApodException handle(exception);
}
