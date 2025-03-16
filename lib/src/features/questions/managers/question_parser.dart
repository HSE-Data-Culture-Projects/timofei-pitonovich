import 'package:xml/xml.dart';

import '../questions.dart';

class QuestionParser {
  List<Question> parse(String xmlString) {
    final document = XmlDocument.parse(xmlString);
    final questions = document.findAllElements('question');

    final parsedQuestions = <Question>[];
    for (final question in questions) {
      final type = question.getAttribute('type');
      final name = _removeHtmlTags(question
          .findElements('name')
          .single
          .findElements('text')
          .single
          .innerText);
      final questionText = _removeHtmlTags(question
          .findElements('questiontext')
          .single
          .findElements('text')
          .single
          .innerText);
      final generalFeedback = _removeHtmlTags(question
          .findElements('generalfeedback')
          .single
          .findElements('text')
          .single
          .innerText);
      final defaultGrade = double.parse(
          question.findElements('defaultgrade').single.innerText.trim());
      final penalty = double.parse(
          question.findElements('penalty').single.innerText.trim());

      switch (type) {
        case 'shortanswer':
          final answers = question.findAllElements('answer').map((answer) {
            final text =
                _removeHtmlTags(answer.findElements('text').single.innerText);
            final feedback = _removeHtmlTags(answer
                .findElements('feedback')
                .single
                .findElements('text')
                .single
                .innerText);
            return ShortAnswer(text: text, feedback: feedback);
          }).toList();
          parsedQuestions.add(Question.shortAnswer(
            name: name,
            questionText: questionText,
            generalFeedback: generalFeedback,
            defaultGrade: defaultGrade,
            penalty: penalty,
            answers: answers,
          ));

        case 'truefalse':
          final answers = question.findAllElements('answer').map((answer) {
            final isTrue =
                _removeHtmlTags(answer.findElements('text').single.innerText)
                        .toLowerCase() ==
                    'true';
            final feedback = _removeHtmlTags(answer
                .findElements('feedback')
                .single
                .findElements('text')
                .single
                .innerText);
            return TrueFalseAnswer(isTrue: isTrue, feedback: feedback);
          }).toList();
          final correctAnswer = answers.firstWhere((answer) => answer.isTrue);
          parsedQuestions.add(Question.trueFalse(
            name: name,
            questionText: questionText,
            generalFeedback: generalFeedback,
            defaultGrade: defaultGrade,
            penalty: penalty,
            correctAnswer: correctAnswer,
          ));

        case 'multichoice':
          final single =
              question.findElements('single').single.innerText.trim() == 'true';
          final shuffleAnswers =
              question.findElements('shuffleanswers').single.innerText.trim() ==
                  'true';
          final correctFeedback = _removeHtmlTags(question
              .findElements('correctfeedback')
              .single
              .findElements('text')
              .single
              .innerText);
          final partiallyCorrectFeedback = _removeHtmlTags(question
              .findElements('partiallycorrectfeedback')
              .single
              .findElements('text')
              .single
              .innerText);
          final incorrectFeedback = _removeHtmlTags(question
              .findElements('incorrectfeedback')
              .single
              .findElements('text')
              .single
              .innerText);

          final answers = question.findAllElements('answer').map((answer) {
            final text =
                _removeHtmlTags(answer.findElements('text').single.innerText);
            final feedback = _removeHtmlTags(answer
                .findElements('feedback')
                .single
                .findElements('text')
                .single
                .innerText);
            final fraction = double.parse(answer.getAttribute('fraction')!);
            return MultiChoiceAnswer(
              text: text,
              feedback: feedback,
              fraction: fraction.toInt(),
            );
          }).toList();

          parsedQuestions.add(Question.multiChoice(
            name: name,
            questionText: questionText,
            generalFeedback: generalFeedback,
            defaultGrade: defaultGrade,
            penalty: penalty,
            single: single,
            shuffleAnswers: shuffleAnswers,
            answers: answers,
            correctFeedback: correctFeedback,
            partiallyCorrectFeedback: partiallyCorrectFeedback,
            incorrectFeedback: incorrectFeedback,
          ));
      }
    }
    return parsedQuestions;
  }

  static String _removeHtmlTags(String text) {
    final regex = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: false);
    return text
        .replaceAll(r'<br>', '\n\n')
        .replaceAll(r'</span>', '</span>\n\n')
        .replaceAll(regex, '')
        .trim();
  }
}
