import '../questions.dart';

class QuestionsMockRepository implements QuestionsRepository {
  @override
  List<Question> getQuestionsByTopicId(int topicId) {
    return const <Question>[
      Question.multiChoice(
        name: 'Вопрос 1',
        questionText:
            'Как называется кузов ешки, на котором передвигается Суемёт Мерседесыч?',
        generalFeedback: 'Ответ принят.',
        defaultGrade: 0,
        penalty: 0,
        single: true,
        shuffleAnswers: false,
        answers: <MultiChoiceAnswer>[
          MultiChoiceAnswer(text: 'W211', feedback: '', fraction: 0),
          MultiChoiceAnswer(text: 'W212', feedback: '', fraction: 0),
          MultiChoiceAnswer(text: 'W213', feedback: '', fraction: 1),
        ],
        correctFeedback: 'И вы абсолютно правы!',
        partiallyCorrectFeedback: '',
        incorrectFeedback: '',
      ),
      Question.multiChoice(
        name: 'Вопрос 2',
        questionText:
            'На чём постоянно получает штрафы главный хасанатор всия Руси Александр Хасанович?',
        generalFeedback: 'Ответ принят.',
        defaultGrade: 0,
        penalty: 0,
        single: true,
        shuffleAnswers: false,
        answers: <MultiChoiceAnswer>[
          MultiChoiceAnswer(text: 'CLA 45 AMG', feedback: '', fraction: 1),
          MultiChoiceAnswer(text: 'M3 Compot', feedback: '', fraction: 0),
          MultiChoiceAnswer(text: 'LX570', feedback: '', fraction: 1),
        ],
        correctFeedback: 'И вы абсолютно правы!',
        partiallyCorrectFeedback: '',
        incorrectFeedback: '',
      ),
      Question.trueFalse(
        name: 'Вопрос 3',
        questionText:
            'Правда ли, что Евгений Бордюрович перевернулся в посёлке Хоругвино?',
        generalFeedback: '',
        defaultGrade: 0,
        penalty: 0,
        correctAnswer: TrueFalseAnswer(isTrue: true, feedback: ''),
      ),
      Question.trueFalse(
        name: 'Вопрос 4',
        questionText:
            'Правда ли, что Вархит Мерседесыч получил свой первый штраф 22 сентября 2022 года, хасаня по набережке со скоростью 20 километров в час?',
        generalFeedback: '',
        defaultGrade: 0,
        penalty: 0,
        correctAnswer: TrueFalseAnswer(isTrue: false, feedback: ''),
      ),
      Question.shortAnswer(
        name: 'Вопрос 5',
        questionText:
            'Назовите главный проспект для хасанаторства в городе Москва Российской Федерации (ни о каком США и речи идти не может, их Москва - это подделка непонятная',
        generalFeedback: '',
        defaultGrade: 0,
        penalty: 0,
        answers: [
          ShortAnswer(text: 'Кутуза', feedback: ''),
          ShortAnswer(text: 'Кутузовский', feedback: ''),
          ShortAnswer(text: 'Кутузовский проспект', feedback: ''),
        ],
      ),
    ];
  }
}
