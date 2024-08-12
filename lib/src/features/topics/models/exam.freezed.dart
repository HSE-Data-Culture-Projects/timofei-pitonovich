// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
  String get name => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;

  /// Serializes this Exam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call({String name, List<Topic> topics});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamImplCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$ExamImplCopyWith(
          _$ExamImpl value, $Res Function(_$ExamImpl) then) =
      __$$ExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Topic> topics});
}

/// @nodoc
class __$$ExamImplCopyWithImpl<$Res>
    extends _$ExamCopyWithImpl<$Res, _$ExamImpl>
    implements _$$ExamImplCopyWith<$Res> {
  __$$ExamImplCopyWithImpl(_$ExamImpl _value, $Res Function(_$ExamImpl) _then)
      : super(_value, _then);

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? topics = null,
  }) {
    return _then(_$ExamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamImpl implements _Exam {
  const _$ExamImpl({required this.name, required final List<Topic> topics})
      : _topics = topics;

  factory _$ExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamImplFromJson(json);

  @override
  final String name;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'Exam(name: $name, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      __$$ExamImplCopyWithImpl<_$ExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamImplToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  const factory _Exam(
      {required final String name,
      required final List<Topic> topics}) = _$ExamImpl;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$ExamImpl.fromJson;

  @override
  String get name;
  @override
  List<Topic> get topics;

  /// Create a copy of Exam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamImplCopyWith<_$ExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
