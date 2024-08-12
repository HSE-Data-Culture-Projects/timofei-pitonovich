// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShortAnswerQuestionImpl _$$ShortAnswerQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$ShortAnswerQuestionImpl(
      name: json['name'] as String,
      questionText: json['questionText'] as String,
      generalFeedback: json['generalFeedback'] as String,
      defaultGrade: (json['defaultGrade'] as num).toDouble(),
      penalty: (json['penalty'] as num).toDouble(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => ShortAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShortAnswerQuestionImplToJson(
        _$ShortAnswerQuestionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'questionText': instance.questionText,
      'generalFeedback': instance.generalFeedback,
      'defaultGrade': instance.defaultGrade,
      'penalty': instance.penalty,
      'answers': instance.answers,
      'runtimeType': instance.$type,
    };

_$TrueFalseQuestionImpl _$$TrueFalseQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$TrueFalseQuestionImpl(
      name: json['name'] as String,
      questionText: json['questionText'] as String,
      generalFeedback: json['generalFeedback'] as String,
      defaultGrade: (json['defaultGrade'] as num).toDouble(),
      penalty: (json['penalty'] as num).toDouble(),
      correctAnswer: TrueFalseAnswer.fromJson(
          json['correctAnswer'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TrueFalseQuestionImplToJson(
        _$TrueFalseQuestionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'questionText': instance.questionText,
      'generalFeedback': instance.generalFeedback,
      'defaultGrade': instance.defaultGrade,
      'penalty': instance.penalty,
      'correctAnswer': instance.correctAnswer,
      'runtimeType': instance.$type,
    };

_$MultichoiceQuestionImpl _$$MultichoiceQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$MultichoiceQuestionImpl(
      name: json['name'] as String,
      questionText: json['questionText'] as String,
      generalFeedback: json['generalFeedback'] as String,
      defaultGrade: (json['defaultGrade'] as num).toDouble(),
      penalty: (json['penalty'] as num).toDouble(),
      single: json['single'] as bool,
      shuffleAnswers: json['shuffleAnswers'] as bool,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => MultiChoiceAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctFeedback: json['correctFeedback'] as String,
      partiallyCorrectFeedback: json['partiallyCorrectFeedback'] as String,
      incorrectFeedback: json['incorrectFeedback'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MultichoiceQuestionImplToJson(
        _$MultichoiceQuestionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'questionText': instance.questionText,
      'generalFeedback': instance.generalFeedback,
      'defaultGrade': instance.defaultGrade,
      'penalty': instance.penalty,
      'single': instance.single,
      'shuffleAnswers': instance.shuffleAnswers,
      'answers': instance.answers,
      'correctFeedback': instance.correctFeedback,
      'partiallyCorrectFeedback': instance.partiallyCorrectFeedback,
      'incorrectFeedback': instance.incorrectFeedback,
      'runtimeType': instance.$type,
    };

_$ShortAnswerImpl _$$ShortAnswerImplFromJson(Map<String, dynamic> json) =>
    _$ShortAnswerImpl(
      text: json['text'] as String,
      feedback: json['feedback'] as String,
    );

Map<String, dynamic> _$$ShortAnswerImplToJson(_$ShortAnswerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'feedback': instance.feedback,
    };

_$TrueFalseAnswerImpl _$$TrueFalseAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$TrueFalseAnswerImpl(
      isTrue: json['isTrue'] as bool,
      feedback: json['feedback'] as String,
    );

Map<String, dynamic> _$$TrueFalseAnswerImplToJson(
        _$TrueFalseAnswerImpl instance) =>
    <String, dynamic>{
      'isTrue': instance.isTrue,
      'feedback': instance.feedback,
    };

_$MultiChoiceAnswerImpl _$$MultiChoiceAnswerImplFromJson(
        Map<String, dynamic> json) =>
    _$MultiChoiceAnswerImpl(
      text: json['text'] as String,
      feedback: json['feedback'] as String,
      fraction: (json['fraction'] as num).toInt(),
    );

Map<String, dynamic> _$$MultiChoiceAnswerImplToJson(
        _$MultiChoiceAnswerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'feedback': instance.feedback,
      'fraction': instance.fraction,
    };
