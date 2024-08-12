// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'shortAnswer':
      return ShortAnswerQuestion.fromJson(json);
    case 'trueFalse':
      return TrueFalseQuestion.fromJson(json);
    case 'multiChoice':
      return MultichoiceQuestion.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Question',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Question {
  String get name => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  String get generalFeedback => throw _privateConstructorUsedError;
  double get defaultGrade => throw _privateConstructorUsedError;
  double get penalty => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            List<ShortAnswer> answers)
        shortAnswer,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            TrueFalseAnswer correctAnswer)
        trueFalse,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)
        multiChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult? Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAnswerQuestion value) shortAnswer,
    required TResult Function(TrueFalseQuestion value) trueFalse,
    required TResult Function(MultichoiceQuestion value) multiChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortAnswerQuestion value)? shortAnswer,
    TResult? Function(TrueFalseQuestion value)? trueFalse,
    TResult? Function(MultichoiceQuestion value)? multiChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAnswerQuestion value)? shortAnswer,
    TResult Function(TrueFalseQuestion value)? trueFalse,
    TResult Function(MultichoiceQuestion value)? multiChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {String name,
      String questionText,
      String generalFeedback,
      double defaultGrade,
      double penalty});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questionText = null,
    Object? generalFeedback = null,
    Object? defaultGrade = null,
    Object? penalty = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      generalFeedback: null == generalFeedback
          ? _value.generalFeedback
          : generalFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      defaultGrade: null == defaultGrade
          ? _value.defaultGrade
          : defaultGrade // ignore: cast_nullable_to_non_nullable
              as double,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortAnswerQuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$ShortAnswerQuestionImplCopyWith(_$ShortAnswerQuestionImpl value,
          $Res Function(_$ShortAnswerQuestionImpl) then) =
      __$$ShortAnswerQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String questionText,
      String generalFeedback,
      double defaultGrade,
      double penalty,
      List<ShortAnswer> answers});
}

/// @nodoc
class __$$ShortAnswerQuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$ShortAnswerQuestionImpl>
    implements _$$ShortAnswerQuestionImplCopyWith<$Res> {
  __$$ShortAnswerQuestionImplCopyWithImpl(_$ShortAnswerQuestionImpl _value,
      $Res Function(_$ShortAnswerQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questionText = null,
    Object? generalFeedback = null,
    Object? defaultGrade = null,
    Object? penalty = null,
    Object? answers = null,
  }) {
    return _then(_$ShortAnswerQuestionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      generalFeedback: null == generalFeedback
          ? _value.generalFeedback
          : generalFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      defaultGrade: null == defaultGrade
          ? _value.defaultGrade
          : defaultGrade // ignore: cast_nullable_to_non_nullable
              as double,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<ShortAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortAnswerQuestionImpl implements ShortAnswerQuestion {
  const _$ShortAnswerQuestionImpl(
      {required this.name,
      required this.questionText,
      required this.generalFeedback,
      required this.defaultGrade,
      required this.penalty,
      required final List<ShortAnswer> answers,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'shortAnswer';

  factory _$ShortAnswerQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortAnswerQuestionImplFromJson(json);

  @override
  final String name;
  @override
  final String questionText;
  @override
  final String generalFeedback;
  @override
  final double defaultGrade;
  @override
  final double penalty;
  final List<ShortAnswer> _answers;
  @override
  List<ShortAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.shortAnswer(name: $name, questionText: $questionText, generalFeedback: $generalFeedback, defaultGrade: $defaultGrade, penalty: $penalty, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortAnswerQuestionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.generalFeedback, generalFeedback) ||
                other.generalFeedback == generalFeedback) &&
            (identical(other.defaultGrade, defaultGrade) ||
                other.defaultGrade == defaultGrade) &&
            (identical(other.penalty, penalty) || other.penalty == penalty) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      questionText,
      generalFeedback,
      defaultGrade,
      penalty,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortAnswerQuestionImplCopyWith<_$ShortAnswerQuestionImpl> get copyWith =>
      __$$ShortAnswerQuestionImplCopyWithImpl<_$ShortAnswerQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            List<ShortAnswer> answers)
        shortAnswer,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            TrueFalseAnswer correctAnswer)
        trueFalse,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)
        multiChoice,
  }) {
    return shortAnswer(
        name, questionText, generalFeedback, defaultGrade, penalty, answers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult? Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
  }) {
    return shortAnswer?.call(
        name, questionText, generalFeedback, defaultGrade, penalty, answers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
    required TResult orElse(),
  }) {
    if (shortAnswer != null) {
      return shortAnswer(
          name, questionText, generalFeedback, defaultGrade, penalty, answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAnswerQuestion value) shortAnswer,
    required TResult Function(TrueFalseQuestion value) trueFalse,
    required TResult Function(MultichoiceQuestion value) multiChoice,
  }) {
    return shortAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortAnswerQuestion value)? shortAnswer,
    TResult? Function(TrueFalseQuestion value)? trueFalse,
    TResult? Function(MultichoiceQuestion value)? multiChoice,
  }) {
    return shortAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAnswerQuestion value)? shortAnswer,
    TResult Function(TrueFalseQuestion value)? trueFalse,
    TResult Function(MultichoiceQuestion value)? multiChoice,
    required TResult orElse(),
  }) {
    if (shortAnswer != null) {
      return shortAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortAnswerQuestionImplToJson(
      this,
    );
  }
}

abstract class ShortAnswerQuestion implements Question {
  const factory ShortAnswerQuestion(
      {required final String name,
      required final String questionText,
      required final String generalFeedback,
      required final double defaultGrade,
      required final double penalty,
      required final List<ShortAnswer> answers}) = _$ShortAnswerQuestionImpl;

  factory ShortAnswerQuestion.fromJson(Map<String, dynamic> json) =
      _$ShortAnswerQuestionImpl.fromJson;

  @override
  String get name;
  @override
  String get questionText;
  @override
  String get generalFeedback;
  @override
  double get defaultGrade;
  @override
  double get penalty;
  List<ShortAnswer> get answers;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortAnswerQuestionImplCopyWith<_$ShortAnswerQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrueFalseQuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$TrueFalseQuestionImplCopyWith(_$TrueFalseQuestionImpl value,
          $Res Function(_$TrueFalseQuestionImpl) then) =
      __$$TrueFalseQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String questionText,
      String generalFeedback,
      double defaultGrade,
      double penalty,
      TrueFalseAnswer correctAnswer});

  $TrueFalseAnswerCopyWith<$Res> get correctAnswer;
}

/// @nodoc
class __$$TrueFalseQuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$TrueFalseQuestionImpl>
    implements _$$TrueFalseQuestionImplCopyWith<$Res> {
  __$$TrueFalseQuestionImplCopyWithImpl(_$TrueFalseQuestionImpl _value,
      $Res Function(_$TrueFalseQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questionText = null,
    Object? generalFeedback = null,
    Object? defaultGrade = null,
    Object? penalty = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$TrueFalseQuestionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      generalFeedback: null == generalFeedback
          ? _value.generalFeedback
          : generalFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      defaultGrade: null == defaultGrade
          ? _value.defaultGrade
          : defaultGrade // ignore: cast_nullable_to_non_nullable
              as double,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as TrueFalseAnswer,
    ));
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrueFalseAnswerCopyWith<$Res> get correctAnswer {
    return $TrueFalseAnswerCopyWith<$Res>(_value.correctAnswer, (value) {
      return _then(_value.copyWith(correctAnswer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TrueFalseQuestionImpl implements TrueFalseQuestion {
  const _$TrueFalseQuestionImpl(
      {required this.name,
      required this.questionText,
      required this.generalFeedback,
      required this.defaultGrade,
      required this.penalty,
      required this.correctAnswer,
      final String? $type})
      : $type = $type ?? 'trueFalse';

  factory _$TrueFalseQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrueFalseQuestionImplFromJson(json);

  @override
  final String name;
  @override
  final String questionText;
  @override
  final String generalFeedback;
  @override
  final double defaultGrade;
  @override
  final double penalty;
  @override
  final TrueFalseAnswer correctAnswer;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.trueFalse(name: $name, questionText: $questionText, generalFeedback: $generalFeedback, defaultGrade: $defaultGrade, penalty: $penalty, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrueFalseQuestionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.generalFeedback, generalFeedback) ||
                other.generalFeedback == generalFeedback) &&
            (identical(other.defaultGrade, defaultGrade) ||
                other.defaultGrade == defaultGrade) &&
            (identical(other.penalty, penalty) || other.penalty == penalty) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, questionText,
      generalFeedback, defaultGrade, penalty, correctAnswer);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrueFalseQuestionImplCopyWith<_$TrueFalseQuestionImpl> get copyWith =>
      __$$TrueFalseQuestionImplCopyWithImpl<_$TrueFalseQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            List<ShortAnswer> answers)
        shortAnswer,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            TrueFalseAnswer correctAnswer)
        trueFalse,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)
        multiChoice,
  }) {
    return trueFalse(name, questionText, generalFeedback, defaultGrade, penalty,
        correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult? Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
  }) {
    return trueFalse?.call(name, questionText, generalFeedback, defaultGrade,
        penalty, correctAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
    required TResult orElse(),
  }) {
    if (trueFalse != null) {
      return trueFalse(name, questionText, generalFeedback, defaultGrade,
          penalty, correctAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAnswerQuestion value) shortAnswer,
    required TResult Function(TrueFalseQuestion value) trueFalse,
    required TResult Function(MultichoiceQuestion value) multiChoice,
  }) {
    return trueFalse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortAnswerQuestion value)? shortAnswer,
    TResult? Function(TrueFalseQuestion value)? trueFalse,
    TResult? Function(MultichoiceQuestion value)? multiChoice,
  }) {
    return trueFalse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAnswerQuestion value)? shortAnswer,
    TResult Function(TrueFalseQuestion value)? trueFalse,
    TResult Function(MultichoiceQuestion value)? multiChoice,
    required TResult orElse(),
  }) {
    if (trueFalse != null) {
      return trueFalse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TrueFalseQuestionImplToJson(
      this,
    );
  }
}

abstract class TrueFalseQuestion implements Question {
  const factory TrueFalseQuestion(
      {required final String name,
      required final String questionText,
      required final String generalFeedback,
      required final double defaultGrade,
      required final double penalty,
      required final TrueFalseAnswer correctAnswer}) = _$TrueFalseQuestionImpl;

  factory TrueFalseQuestion.fromJson(Map<String, dynamic> json) =
      _$TrueFalseQuestionImpl.fromJson;

  @override
  String get name;
  @override
  String get questionText;
  @override
  String get generalFeedback;
  @override
  double get defaultGrade;
  @override
  double get penalty;
  TrueFalseAnswer get correctAnswer;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrueFalseQuestionImplCopyWith<_$TrueFalseQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultichoiceQuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$MultichoiceQuestionImplCopyWith(_$MultichoiceQuestionImpl value,
          $Res Function(_$MultichoiceQuestionImpl) then) =
      __$$MultichoiceQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String questionText,
      String generalFeedback,
      double defaultGrade,
      double penalty,
      bool single,
      bool shuffleAnswers,
      List<MultiChoiceAnswer> answers,
      String correctFeedback,
      String partiallyCorrectFeedback,
      String incorrectFeedback});
}

/// @nodoc
class __$$MultichoiceQuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$MultichoiceQuestionImpl>
    implements _$$MultichoiceQuestionImplCopyWith<$Res> {
  __$$MultichoiceQuestionImplCopyWithImpl(_$MultichoiceQuestionImpl _value,
      $Res Function(_$MultichoiceQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? questionText = null,
    Object? generalFeedback = null,
    Object? defaultGrade = null,
    Object? penalty = null,
    Object? single = null,
    Object? shuffleAnswers = null,
    Object? answers = null,
    Object? correctFeedback = null,
    Object? partiallyCorrectFeedback = null,
    Object? incorrectFeedback = null,
  }) {
    return _then(_$MultichoiceQuestionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      generalFeedback: null == generalFeedback
          ? _value.generalFeedback
          : generalFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      defaultGrade: null == defaultGrade
          ? _value.defaultGrade
          : defaultGrade // ignore: cast_nullable_to_non_nullable
              as double,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as double,
      single: null == single
          ? _value.single
          : single // ignore: cast_nullable_to_non_nullable
              as bool,
      shuffleAnswers: null == shuffleAnswers
          ? _value.shuffleAnswers
          : shuffleAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<MultiChoiceAnswer>,
      correctFeedback: null == correctFeedback
          ? _value.correctFeedback
          : correctFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      partiallyCorrectFeedback: null == partiallyCorrectFeedback
          ? _value.partiallyCorrectFeedback
          : partiallyCorrectFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      incorrectFeedback: null == incorrectFeedback
          ? _value.incorrectFeedback
          : incorrectFeedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultichoiceQuestionImpl implements MultichoiceQuestion {
  const _$MultichoiceQuestionImpl(
      {required this.name,
      required this.questionText,
      required this.generalFeedback,
      required this.defaultGrade,
      required this.penalty,
      required this.single,
      required this.shuffleAnswers,
      required final List<MultiChoiceAnswer> answers,
      required this.correctFeedback,
      required this.partiallyCorrectFeedback,
      required this.incorrectFeedback,
      final String? $type})
      : _answers = answers,
        $type = $type ?? 'multiChoice';

  factory _$MultichoiceQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultichoiceQuestionImplFromJson(json);

  @override
  final String name;
  @override
  final String questionText;
  @override
  final String generalFeedback;
  @override
  final double defaultGrade;
  @override
  final double penalty;
  @override
  final bool single;
  @override
  final bool shuffleAnswers;
  final List<MultiChoiceAnswer> _answers;
  @override
  List<MultiChoiceAnswer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String correctFeedback;
  @override
  final String partiallyCorrectFeedback;
  @override
  final String incorrectFeedback;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.multiChoice(name: $name, questionText: $questionText, generalFeedback: $generalFeedback, defaultGrade: $defaultGrade, penalty: $penalty, single: $single, shuffleAnswers: $shuffleAnswers, answers: $answers, correctFeedback: $correctFeedback, partiallyCorrectFeedback: $partiallyCorrectFeedback, incorrectFeedback: $incorrectFeedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultichoiceQuestionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.generalFeedback, generalFeedback) ||
                other.generalFeedback == generalFeedback) &&
            (identical(other.defaultGrade, defaultGrade) ||
                other.defaultGrade == defaultGrade) &&
            (identical(other.penalty, penalty) || other.penalty == penalty) &&
            (identical(other.single, single) || other.single == single) &&
            (identical(other.shuffleAnswers, shuffleAnswers) ||
                other.shuffleAnswers == shuffleAnswers) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.correctFeedback, correctFeedback) ||
                other.correctFeedback == correctFeedback) &&
            (identical(
                    other.partiallyCorrectFeedback, partiallyCorrectFeedback) ||
                other.partiallyCorrectFeedback == partiallyCorrectFeedback) &&
            (identical(other.incorrectFeedback, incorrectFeedback) ||
                other.incorrectFeedback == incorrectFeedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      questionText,
      generalFeedback,
      defaultGrade,
      penalty,
      single,
      shuffleAnswers,
      const DeepCollectionEquality().hash(_answers),
      correctFeedback,
      partiallyCorrectFeedback,
      incorrectFeedback);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultichoiceQuestionImplCopyWith<_$MultichoiceQuestionImpl> get copyWith =>
      __$$MultichoiceQuestionImplCopyWithImpl<_$MultichoiceQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            List<ShortAnswer> answers)
        shortAnswer,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            TrueFalseAnswer correctAnswer)
        trueFalse,
    required TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)
        multiChoice,
  }) {
    return multiChoice(
        name,
        questionText,
        generalFeedback,
        defaultGrade,
        penalty,
        single,
        shuffleAnswers,
        answers,
        correctFeedback,
        partiallyCorrectFeedback,
        incorrectFeedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult? Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult? Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
  }) {
    return multiChoice?.call(
        name,
        questionText,
        generalFeedback,
        defaultGrade,
        penalty,
        single,
        shuffleAnswers,
        answers,
        correctFeedback,
        partiallyCorrectFeedback,
        incorrectFeedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, List<ShortAnswer> answers)?
        shortAnswer,
    TResult Function(String name, String questionText, String generalFeedback,
            double defaultGrade, double penalty, TrueFalseAnswer correctAnswer)?
        trueFalse,
    TResult Function(
            String name,
            String questionText,
            String generalFeedback,
            double defaultGrade,
            double penalty,
            bool single,
            bool shuffleAnswers,
            List<MultiChoiceAnswer> answers,
            String correctFeedback,
            String partiallyCorrectFeedback,
            String incorrectFeedback)?
        multiChoice,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(
          name,
          questionText,
          generalFeedback,
          defaultGrade,
          penalty,
          single,
          shuffleAnswers,
          answers,
          correctFeedback,
          partiallyCorrectFeedback,
          incorrectFeedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShortAnswerQuestion value) shortAnswer,
    required TResult Function(TrueFalseQuestion value) trueFalse,
    required TResult Function(MultichoiceQuestion value) multiChoice,
  }) {
    return multiChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShortAnswerQuestion value)? shortAnswer,
    TResult? Function(TrueFalseQuestion value)? trueFalse,
    TResult? Function(MultichoiceQuestion value)? multiChoice,
  }) {
    return multiChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShortAnswerQuestion value)? shortAnswer,
    TResult Function(TrueFalseQuestion value)? trueFalse,
    TResult Function(MultichoiceQuestion value)? multiChoice,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultichoiceQuestionImplToJson(
      this,
    );
  }
}

abstract class MultichoiceQuestion implements Question {
  const factory MultichoiceQuestion(
      {required final String name,
      required final String questionText,
      required final String generalFeedback,
      required final double defaultGrade,
      required final double penalty,
      required final bool single,
      required final bool shuffleAnswers,
      required final List<MultiChoiceAnswer> answers,
      required final String correctFeedback,
      required final String partiallyCorrectFeedback,
      required final String incorrectFeedback}) = _$MultichoiceQuestionImpl;

  factory MultichoiceQuestion.fromJson(Map<String, dynamic> json) =
      _$MultichoiceQuestionImpl.fromJson;

  @override
  String get name;
  @override
  String get questionText;
  @override
  String get generalFeedback;
  @override
  double get defaultGrade;
  @override
  double get penalty;
  bool get single;
  bool get shuffleAnswers;
  List<MultiChoiceAnswer> get answers;
  String get correctFeedback;
  String get partiallyCorrectFeedback;
  String get incorrectFeedback;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultichoiceQuestionImplCopyWith<_$MultichoiceQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShortAnswer _$ShortAnswerFromJson(Map<String, dynamic> json) {
  return _ShortAnswer.fromJson(json);
}

/// @nodoc
mixin _$ShortAnswer {
  String get text => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  /// Serializes this ShortAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShortAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShortAnswerCopyWith<ShortAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortAnswerCopyWith<$Res> {
  factory $ShortAnswerCopyWith(
          ShortAnswer value, $Res Function(ShortAnswer) then) =
      _$ShortAnswerCopyWithImpl<$Res, ShortAnswer>;
  @useResult
  $Res call({String text, String feedback});
}

/// @nodoc
class _$ShortAnswerCopyWithImpl<$Res, $Val extends ShortAnswer>
    implements $ShortAnswerCopyWith<$Res> {
  _$ShortAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShortAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortAnswerImplCopyWith<$Res>
    implements $ShortAnswerCopyWith<$Res> {
  factory _$$ShortAnswerImplCopyWith(
          _$ShortAnswerImpl value, $Res Function(_$ShortAnswerImpl) then) =
      __$$ShortAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String feedback});
}

/// @nodoc
class __$$ShortAnswerImplCopyWithImpl<$Res>
    extends _$ShortAnswerCopyWithImpl<$Res, _$ShortAnswerImpl>
    implements _$$ShortAnswerImplCopyWith<$Res> {
  __$$ShortAnswerImplCopyWithImpl(
      _$ShortAnswerImpl _value, $Res Function(_$ShortAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShortAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? feedback = null,
  }) {
    return _then(_$ShortAnswerImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortAnswerImpl implements _ShortAnswer {
  const _$ShortAnswerImpl({required this.text, required this.feedback});

  factory _$ShortAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortAnswerImplFromJson(json);

  @override
  final String text;
  @override
  final String feedback;

  @override
  String toString() {
    return 'ShortAnswer(text: $text, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortAnswerImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, feedback);

  /// Create a copy of ShortAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortAnswerImplCopyWith<_$ShortAnswerImpl> get copyWith =>
      __$$ShortAnswerImplCopyWithImpl<_$ShortAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortAnswerImplToJson(
      this,
    );
  }
}

abstract class _ShortAnswer implements ShortAnswer {
  const factory _ShortAnswer(
      {required final String text,
      required final String feedback}) = _$ShortAnswerImpl;

  factory _ShortAnswer.fromJson(Map<String, dynamic> json) =
      _$ShortAnswerImpl.fromJson;

  @override
  String get text;
  @override
  String get feedback;

  /// Create a copy of ShortAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortAnswerImplCopyWith<_$ShortAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrueFalseAnswer _$TrueFalseAnswerFromJson(Map<String, dynamic> json) {
  return _TrueFalseAnswer.fromJson(json);
}

/// @nodoc
mixin _$TrueFalseAnswer {
  bool get isTrue => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  /// Serializes this TrueFalseAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrueFalseAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrueFalseAnswerCopyWith<TrueFalseAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrueFalseAnswerCopyWith<$Res> {
  factory $TrueFalseAnswerCopyWith(
          TrueFalseAnswer value, $Res Function(TrueFalseAnswer) then) =
      _$TrueFalseAnswerCopyWithImpl<$Res, TrueFalseAnswer>;
  @useResult
  $Res call({bool isTrue, String feedback});
}

/// @nodoc
class _$TrueFalseAnswerCopyWithImpl<$Res, $Val extends TrueFalseAnswer>
    implements $TrueFalseAnswerCopyWith<$Res> {
  _$TrueFalseAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrueFalseAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrueFalseAnswerImplCopyWith<$Res>
    implements $TrueFalseAnswerCopyWith<$Res> {
  factory _$$TrueFalseAnswerImplCopyWith(_$TrueFalseAnswerImpl value,
          $Res Function(_$TrueFalseAnswerImpl) then) =
      __$$TrueFalseAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTrue, String feedback});
}

/// @nodoc
class __$$TrueFalseAnswerImplCopyWithImpl<$Res>
    extends _$TrueFalseAnswerCopyWithImpl<$Res, _$TrueFalseAnswerImpl>
    implements _$$TrueFalseAnswerImplCopyWith<$Res> {
  __$$TrueFalseAnswerImplCopyWithImpl(
      _$TrueFalseAnswerImpl _value, $Res Function(_$TrueFalseAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrueFalseAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
    Object? feedback = null,
  }) {
    return _then(_$TrueFalseAnswerImpl(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrueFalseAnswerImpl implements _TrueFalseAnswer {
  const _$TrueFalseAnswerImpl({required this.isTrue, required this.feedback});

  factory _$TrueFalseAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrueFalseAnswerImplFromJson(json);

  @override
  final bool isTrue;
  @override
  final String feedback;

  @override
  String toString() {
    return 'TrueFalseAnswer(isTrue: $isTrue, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrueFalseAnswerImpl &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isTrue, feedback);

  /// Create a copy of TrueFalseAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrueFalseAnswerImplCopyWith<_$TrueFalseAnswerImpl> get copyWith =>
      __$$TrueFalseAnswerImplCopyWithImpl<_$TrueFalseAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrueFalseAnswerImplToJson(
      this,
    );
  }
}

abstract class _TrueFalseAnswer implements TrueFalseAnswer {
  const factory _TrueFalseAnswer(
      {required final bool isTrue,
      required final String feedback}) = _$TrueFalseAnswerImpl;

  factory _TrueFalseAnswer.fromJson(Map<String, dynamic> json) =
      _$TrueFalseAnswerImpl.fromJson;

  @override
  bool get isTrue;
  @override
  String get feedback;

  /// Create a copy of TrueFalseAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrueFalseAnswerImplCopyWith<_$TrueFalseAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MultiChoiceAnswer _$MultiChoiceAnswerFromJson(Map<String, dynamic> json) {
  return _MultiChoiceAnswer.fromJson(json);
}

/// @nodoc
mixin _$MultiChoiceAnswer {
  String get text => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;
  int get fraction => throw _privateConstructorUsedError;

  /// Serializes this MultiChoiceAnswer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultiChoiceAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiChoiceAnswerCopyWith<MultiChoiceAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiChoiceAnswerCopyWith<$Res> {
  factory $MultiChoiceAnswerCopyWith(
          MultiChoiceAnswer value, $Res Function(MultiChoiceAnswer) then) =
      _$MultiChoiceAnswerCopyWithImpl<$Res, MultiChoiceAnswer>;
  @useResult
  $Res call({String text, String feedback, int fraction});
}

/// @nodoc
class _$MultiChoiceAnswerCopyWithImpl<$Res, $Val extends MultiChoiceAnswer>
    implements $MultiChoiceAnswerCopyWith<$Res> {
  _$MultiChoiceAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiChoiceAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? feedback = null,
    Object? fraction = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
      fraction: null == fraction
          ? _value.fraction
          : fraction // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiChoiceAnswerImplCopyWith<$Res>
    implements $MultiChoiceAnswerCopyWith<$Res> {
  factory _$$MultiChoiceAnswerImplCopyWith(_$MultiChoiceAnswerImpl value,
          $Res Function(_$MultiChoiceAnswerImpl) then) =
      __$$MultiChoiceAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String feedback, int fraction});
}

/// @nodoc
class __$$MultiChoiceAnswerImplCopyWithImpl<$Res>
    extends _$MultiChoiceAnswerCopyWithImpl<$Res, _$MultiChoiceAnswerImpl>
    implements _$$MultiChoiceAnswerImplCopyWith<$Res> {
  __$$MultiChoiceAnswerImplCopyWithImpl(_$MultiChoiceAnswerImpl _value,
      $Res Function(_$MultiChoiceAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of MultiChoiceAnswer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? feedback = null,
    Object? fraction = null,
  }) {
    return _then(_$MultiChoiceAnswerImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
      fraction: null == fraction
          ? _value.fraction
          : fraction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiChoiceAnswerImpl implements _MultiChoiceAnswer {
  const _$MultiChoiceAnswerImpl(
      {required this.text, required this.feedback, required this.fraction});

  factory _$MultiChoiceAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiChoiceAnswerImplFromJson(json);

  @override
  final String text;
  @override
  final String feedback;
  @override
  final int fraction;

  @override
  String toString() {
    return 'MultiChoiceAnswer(text: $text, feedback: $feedback, fraction: $fraction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiChoiceAnswerImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.fraction, fraction) ||
                other.fraction == fraction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, feedback, fraction);

  /// Create a copy of MultiChoiceAnswer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiChoiceAnswerImplCopyWith<_$MultiChoiceAnswerImpl> get copyWith =>
      __$$MultiChoiceAnswerImplCopyWithImpl<_$MultiChoiceAnswerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiChoiceAnswerImplToJson(
      this,
    );
  }
}

abstract class _MultiChoiceAnswer implements MultiChoiceAnswer {
  const factory _MultiChoiceAnswer(
      {required final String text,
      required final String feedback,
      required final int fraction}) = _$MultiChoiceAnswerImpl;

  factory _MultiChoiceAnswer.fromJson(Map<String, dynamic> json) =
      _$MultiChoiceAnswerImpl.fromJson;

  @override
  String get text;
  @override
  String get feedback;
  @override
  int get fraction;

  /// Create a copy of MultiChoiceAnswer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiChoiceAnswerImplCopyWith<_$MultiChoiceAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
