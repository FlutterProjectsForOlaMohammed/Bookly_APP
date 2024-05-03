import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errMessage:
                "Failed to establish a connection within the specified time limit.");
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            errMessage:
                "Failed to send the request within the specified time limit.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errMessage:
                "Failed to receive a response within the specified time limit.");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Certificate verification failed.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            statusCode: exception.response!.statusCode!,
            response: exception.response);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Request has been cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "Failed to establish a connection.");
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage:
                "Sorry, an unexpected error occurred. Please try again later.");
      default:
        return ServerFailure(errMessage: "Network Connection Issue.");
    }
  }
  factory ServerFailure.fromBadResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage:
              "Internal Server Error - There's an issue on the server side.");
    } else {
      return ServerFailure(
          errMessage: "Sorry, an Error was Occured , Please Try Later !!");
    }
  }
}
