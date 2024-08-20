import 'package:app/src/features/exams/exams.dart';

class ExamsManager {
  final ExamsRepository _examsRepository;
  final ExamsStateHolder _examsStateHolder;

  ExamsManager(
    this._examsRepository,
    this._examsStateHolder,
  );

  Future<void> getExams() async {
    try {
      _examsStateHolder.setLoading();
      final exams = await _examsRepository.getExams();
      _examsStateHolder.setLoaded(exams);
    } on Exception {
      _examsStateHolder.setError();
    }
  }
}
