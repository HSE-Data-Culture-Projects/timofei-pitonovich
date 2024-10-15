import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/questions/services/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class QuestionsRemoteService implements QuestionsService {
  final Dio _dio;

  QuestionsRemoteService(this._dio);

  @override
  Future<List<Question>> getQuestionsByTopicId(String topicId) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/api/tasks/topic/$topicId',
      );
      final result = <Question>[];
      for (final item in response.data ?? []) {
        if (item['content'] != null) {
          result.addAll(QuestionParser().parse(item['content']));
        }
      }
      return result;
    } on DioException catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
