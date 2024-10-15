// lib/services/gigachat_service.dart

import 'dart:convert';
import 'package:app/src/features/questions/questions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GigaChatService {
  final Dio _dio;
  String? _token;

  GigaChatService({Dio? dio}) : _dio = dio ?? Dio();

  /// Метод для аутентификации и получения токена
  Future<void> authenticate() async {
    try {
      final response = await _dio.post(
        'http://192.168.162.226:3000/api/gigachat/auth/token',
        options: Options(
          headers: {
            'user-agent': 'Dart/3.5 (dart:io)',
            'accept-encoding': 'gzip',
            'content-length': '0',
            'host': '192.168.162.226:3000',
          },
        ),
        data: '', // Пустое тело запроса
      );

      if (response.statusCode == 200) {
        // Предполагается, что ответ содержит токен в поле, например, 'token'
        _token = response.data['access_token'];
        debugPrint('Аутентификация успешна. Токен: $_token');
      } else {
        throw Exception(
            'Не удалось аутентифицироваться. Статус: ${response.statusCode}');
      }
    } on DioException catch (e) {
      debugPrint('Ошибка аутентификации: ${e.message}');
      rethrow;
    }
  }

  /// Метод для генерации ответа
  Future<GigaChatResponse> generate(String message) async {
    if (_token == null) {
      throw Exception(
        'Необходима аутентификация. Вызовите authenticate() сначала.',
      );
    }

    try {
      final response = await _dio.post(
        'http://192.168.162.226:3000/api/gigachat/generate',
        options: Options(
          headers: {
            'user-agent': 'Dart/3.5 (dart:io)',
            'content-type': 'application/json',
            'accept-encoding': 'gzip',
            'authorization': 'Bearer $_token',
            'host': '192.168.162.226:3000',
          },
        ),
        data: jsonEncode({'message': message}),
      );

      if (response.statusCode == 200) {
        // Предполагается, что ответ соответствует вашей ChatResponse модели
        return GigaChatResponse.fromJson(response.data);
      } else {
        throw Exception(
          'Не удалось сгенерировать ответ. Статус: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      debugPrint('Ошибка генерации: ${e.message}');
      rethrow;
    }
  }
}
