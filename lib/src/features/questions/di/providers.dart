import 'package:app/src/features/questions/questions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionsRepositoryProvider = Provider.autoDispose<QuestionsRepository>(
  (ref) {
    return QuestionsMockRepository();
  },
);
