import 'package:app/src/features/questions/questions.dart';

abstract interface class QuestionsRepository {
  List<Question> getQuestionsByTopicId(String topicId);
}
