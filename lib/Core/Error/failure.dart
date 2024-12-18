import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.formDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request to Api Server was cancel');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int stateCode, dynamic response) {
    if (stateCode == 400 || stateCode == 401 || stateCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (stateCode == 404) {
      return ServerFailure(
          errMessage: 'Your request was not found, Please try later');
    } else if (stateCode == 500) {
      return ServerFailure(
          errMessage: 'There is a problem with server, Please try later');
    } else {
      return ServerFailure(
          errMessage: 'Opps There was an Error, Please try again');
    }
  }
}
