import 'package:dio/dio.dart';

abstract class Falier {
  const Falier(this.errorMessage);
  final String errorMessage;
}

class ServerFalier extends Falier {
  ServerFalier(super.errormessage);
  factory ServerFalier.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFalier('Connection time out with server ,try again later');
      case DioExceptionType.sendTimeout:
        return ServerFalier('Send time out with server ,try again later');
      case DioExceptionType.receiveTimeout:
        return ServerFalier('Received time out with server ,try again later');
      case DioExceptionType.badCertificate:
        return ServerFalier('Email or password is incorrect,try again ');
      case DioExceptionType.badResponse:
        return ServerFalier.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFalier('Request to api server was canceled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SoketException')) {
          return ServerFalier('No internet connection');
        }
        return ServerFalier('Oops there was an error , please try again later');
      case DioExceptionType.unknown:
        return ServerFalier('Unexpected error, please try again');
    }
  }

  factory ServerFalier.fromResponse(int statusecode, dynamic response) {
    if (statusecode == 400 || statusecode == 401 || statusecode == 403) {
      return ServerFalier(response['error']['message']);
    } else if (statusecode == 404) {
      return ServerFalier('Your request not found, Please try again later');
    } else if (statusecode == 500) {
      return ServerFalier('internal srver error , please try again later');
    } else {
      return ServerFalier('Oops there was an error , please try again later');
    }
  }
}
