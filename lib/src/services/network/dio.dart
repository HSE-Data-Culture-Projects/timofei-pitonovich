import 'package:app/src/services/network/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://185.4.67.138:3000',
    ),
  );
  dio.interceptors.add(AppInterceptor());
  return dio;
});
