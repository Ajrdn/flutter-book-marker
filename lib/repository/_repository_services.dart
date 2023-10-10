import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:bookmarker/model/failure/failure.dart';

class RepositoryServices {
  static final RepositoryServices instance = RepositoryServices._internal();
  RepositoryServices._internal();
  factory RepositoryServices() => instance;

  Failure handler({
    DioException? dio,
    Object? exception,
  }) {
    if (exception != null && dio == null) {
      Logger().e('ExceptionError :: $exception');
      return const Failure.apiError();
    } else if (dio != null && exception == null) {
      Logger().e('Dio Error :: $dio');
      if (dio.type == DioExceptionType.unknown ||
          dio.type == DioExceptionType.connectionTimeout ||
          dio.type == DioExceptionType.receiveTimeout) {
        return const Failure.networkError();
      } else {
        return const Failure.apiError();
      }
    } else {
      Logger().e('Unknown Error :: $exception');
      return const Failure.apiError();
    }
  }
}
