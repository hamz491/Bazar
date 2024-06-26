import 'package:dio/dio.dart';

abstract class Failure {
  final String ErrorMess;

  Failure({required this.ErrorMess});
}

class serverFailure extends Failure {
  serverFailure({required super.ErrorMess});

  factory serverFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure(ErrorMess: "Connection Timeout, Try Again");
      case DioExceptionType.sendTimeout:
        return serverFailure(ErrorMess: "Send Timeout, Try Again");
      case DioExceptionType.receiveTimeout:
        return serverFailure(ErrorMess: "receive Timeout, Try Again");
      case DioExceptionType.badCertificate:
        return serverFailure(ErrorMess: "Error In Api Certificate");
      case DioExceptionType.badResponse:
        return serverFailure.badStatusCode(
            dioException.response, dioException.response!.statusCode!);
      case DioExceptionType.cancel:
        return serverFailure(ErrorMess: "Cancel, Try Again");
      case DioExceptionType.connectionError:
        return serverFailure(
            ErrorMess: "Internet Connection Error , Try Again");
      case DioExceptionType.unknown:
        return serverFailure(ErrorMess: "Unknown Error");
      default:
        return serverFailure(ErrorMess: "oops There Was an error");
    }
  }

  factory serverFailure.badStatusCode(dynamic response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverFailure(ErrorMess: response['error']['message']);
    } else if (statusCode == 404) {
      return serverFailure(ErrorMess: 'Your Request Not Found, try later!');
    } else if (statusCode == 500) {
      return serverFailure(ErrorMess: 'Internal Server Error, try later!');
    } else {
      return serverFailure(ErrorMess: "oops There Was an Error!");
    }
  }
}
