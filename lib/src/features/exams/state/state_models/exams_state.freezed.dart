// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exams_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExamsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Exam> exams) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Exam> exams)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamsLoadingState value) loading,
    required TResult Function(ExamsLoadedState value) loaded,
    required TResult Function(ExamsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamsLoadingState value)? loading,
    TResult? Function(ExamsLoadedState value)? loaded,
    TResult? Function(ExamsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamsLoadingState value)? loading,
    TResult Function(ExamsLoadedState value)? loaded,
    TResult Function(ExamsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamsStateCopyWith<$Res> {
  factory $ExamsStateCopyWith(
          ExamsState value, $Res Function(ExamsState) then) =
      _$ExamsStateCopyWithImpl<$Res, ExamsState>;
}

/// @nodoc
class _$ExamsStateCopyWithImpl<$Res, $Val extends ExamsState>
    implements $ExamsStateCopyWith<$Res> {
  _$ExamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExamsLoadingStateImplCopyWith<$Res> {
  factory _$$ExamsLoadingStateImplCopyWith(_$ExamsLoadingStateImpl value,
          $Res Function(_$ExamsLoadingStateImpl) then) =
      __$$ExamsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamsLoadingStateImplCopyWithImpl<$Res>
    extends _$ExamsStateCopyWithImpl<$Res, _$ExamsLoadingStateImpl>
    implements _$$ExamsLoadingStateImplCopyWith<$Res> {
  __$$ExamsLoadingStateImplCopyWithImpl(_$ExamsLoadingStateImpl _value,
      $Res Function(_$ExamsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamsLoadingStateImpl implements ExamsLoadingState {
  _$ExamsLoadingStateImpl();

  @override
  String toString() {
    return 'ExamsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Exam> exams) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Exam> exams)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamsLoadingState value) loading,
    required TResult Function(ExamsLoadedState value) loaded,
    required TResult Function(ExamsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamsLoadingState value)? loading,
    TResult? Function(ExamsLoadedState value)? loaded,
    TResult? Function(ExamsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamsLoadingState value)? loading,
    TResult Function(ExamsLoadedState value)? loaded,
    TResult Function(ExamsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExamsLoadingState implements ExamsState {
  factory ExamsLoadingState() = _$ExamsLoadingStateImpl;
}

/// @nodoc
abstract class _$$ExamsLoadedStateImplCopyWith<$Res> {
  factory _$$ExamsLoadedStateImplCopyWith(_$ExamsLoadedStateImpl value,
          $Res Function(_$ExamsLoadedStateImpl) then) =
      __$$ExamsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Exam> exams});
}

/// @nodoc
class __$$ExamsLoadedStateImplCopyWithImpl<$Res>
    extends _$ExamsStateCopyWithImpl<$Res, _$ExamsLoadedStateImpl>
    implements _$$ExamsLoadedStateImplCopyWith<$Res> {
  __$$ExamsLoadedStateImplCopyWithImpl(_$ExamsLoadedStateImpl _value,
      $Res Function(_$ExamsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exams = null,
  }) {
    return _then(_$ExamsLoadedStateImpl(
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
    ));
  }
}

/// @nodoc

class _$ExamsLoadedStateImpl implements ExamsLoadedState {
  _$ExamsLoadedStateImpl({required final List<Exam> exams}) : _exams = exams;

  final List<Exam> _exams;
  @override
  List<Exam> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  @override
  String toString() {
    return 'ExamsState.loaded(exams: $exams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._exams, _exams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exams));

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamsLoadedStateImplCopyWith<_$ExamsLoadedStateImpl> get copyWith =>
      __$$ExamsLoadedStateImplCopyWithImpl<_$ExamsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Exam> exams) loaded,
    required TResult Function() error,
  }) {
    return loaded(exams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(exams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Exam> exams)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(exams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamsLoadingState value) loading,
    required TResult Function(ExamsLoadedState value) loaded,
    required TResult Function(ExamsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamsLoadingState value)? loading,
    TResult? Function(ExamsLoadedState value)? loaded,
    TResult? Function(ExamsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamsLoadingState value)? loading,
    TResult Function(ExamsLoadedState value)? loaded,
    TResult Function(ExamsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ExamsLoadedState implements ExamsState {
  factory ExamsLoadedState({required final List<Exam> exams}) =
      _$ExamsLoadedStateImpl;

  List<Exam> get exams;

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamsLoadedStateImplCopyWith<_$ExamsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExamsErrorStateImplCopyWith<$Res> {
  factory _$$ExamsErrorStateImplCopyWith(_$ExamsErrorStateImpl value,
          $Res Function(_$ExamsErrorStateImpl) then) =
      __$$ExamsErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExamsErrorStateImplCopyWithImpl<$Res>
    extends _$ExamsStateCopyWithImpl<$Res, _$ExamsErrorStateImpl>
    implements _$$ExamsErrorStateImplCopyWith<$Res> {
  __$$ExamsErrorStateImplCopyWithImpl(
      _$ExamsErrorStateImpl _value, $Res Function(_$ExamsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExamsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ExamsErrorStateImpl implements ExamsErrorState {
  _$ExamsErrorStateImpl();

  @override
  String toString() {
    return 'ExamsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExamsErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Exam> exams) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Exam> exams)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Exam> exams)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExamsLoadingState value) loading,
    required TResult Function(ExamsLoadedState value) loaded,
    required TResult Function(ExamsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExamsLoadingState value)? loading,
    TResult? Function(ExamsLoadedState value)? loaded,
    TResult? Function(ExamsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExamsLoadingState value)? loading,
    TResult Function(ExamsLoadedState value)? loaded,
    TResult Function(ExamsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExamsErrorState implements ExamsState {
  factory ExamsErrorState() = _$ExamsErrorStateImpl;
}
