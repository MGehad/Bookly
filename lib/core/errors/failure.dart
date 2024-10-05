import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive Timeout with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponseError(
            dioError.response!, dioError.response!.statusCode!);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Connection Timeout with ApiServer");
      case DioExceptionType.unknown:
        return ServerFailure(
          errMessage: "UnExpected Error, Please try again later!!",
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errMessage: "UnExpected Error, Please try again later!!",
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errMessage: "No Internet Connection",
        );
      default:
        return ServerFailure(
          errMessage: "UnExpected Error, Please try again later!!",
        );
    }
  }

  factory ServerFailure.fromResponseError(Response response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response.data['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "Your request not found, Please try again later!!");
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: "Internal server error, Please try again later!!");
    } else {
      return ServerFailure(
          errMessage: "Oops there is an error, Please try again later!!");
    }
  }
}
