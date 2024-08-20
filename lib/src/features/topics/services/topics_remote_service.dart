import 'package:app/src/features/topics/topics.dart';
import 'package:dio/dio.dart';

class TopicsRemoteService implements TopicsService {
  final Dio _dio;

  TopicsRemoteService(this._dio);

  @override
  Future<List<Topic>> getTopicsByExam(String examId) async {
    try {
      final response = await _dio.get('/api/topics/$examId');
      return Topic.listFromJson(response.data as List<dynamic>);
    } on Exception {
      rethrow;
    }
  }
}
