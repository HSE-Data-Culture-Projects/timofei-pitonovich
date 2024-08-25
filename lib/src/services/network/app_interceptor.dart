import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AppInterceptor extends Interceptor {
  AppInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint(
      '----------REQUEST SENT----------\n'
      'Request sent to ${options.path}\nHeaders: ${options.headers}\nQuery parameters: ${options.queryParameters}\nData: ${options.data}\n'
      '----------REQUEST SENT----------\n',
    );
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      '----------GOT RESPONSE----------\n'
      'Got response from ${response.requestOptions.path}\nStatus code: ${response.statusCode}\nData: ${response.data}\n'
      '----------GOT RESPONSE----------\n',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      '----------NETWORK ERROR----------\n'
      'Network error!\nPath: ${err.requestOptions.path}\nStatus code: ${err.response?.statusCode}\nResponse: ${err.response?.data}\n'
      '----------NETWORK ERROR----------\n',
    );

    if (err.type == DioExceptionType.connectionTimeout) {
      debugPrint('Connection timeout, attempting retry...');
      handler.next(err);
    }

    if (err.response?.statusCode == 401) {
      debugPrint('Unauthorized request, redirecting to login...');
    }

    String errorMessage =
        'An unexpected error occurred. Please try again later.';
    if (err.type == DioExceptionType.unknown) {
      errorMessage =
          'No internet connection. Please check your connection and try again.';
    } else if (err.response != null) {}

    debugPrint(errorMessage);
    super.onError(err, handler);
  }
}
