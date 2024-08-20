import 'package:app/src/features/exams/exams.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ExamsRemoteService implements ExamsService {
  final Dio _dio;

  ExamsRemoteService(this._dio);

  @override
  Future<List<Exam>> getExams() async {
    try {
      final response = await _dio.get('/api/exams');
      return Exam.listFromJson(response.data as List<dynamic>);
    } on DioException catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
