import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certification');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request is cancel');
      case DioExceptionType.connectionError:
        return ServerFailure('There is connection error');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, Try again');
      default:
        return ServerFailure('Opps There was an error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Page Not Found');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server failure');
    } else {
      return ServerFailure('Opps, There was an error, Please try again');
    }
  }
}
