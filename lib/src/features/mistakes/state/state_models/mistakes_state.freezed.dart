// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mistakes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MistakesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> mistakeQuestions) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> mistakeQuestions)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> mistakeQuestions)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MistakesLoadingState value) loading,
    required TResult Function(MistakesLoadedState value) loaded,
    required TResult Function(MistakesErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MistakesLoadingState value)? loading,
    TResult? Function(MistakesLoadedState value)? loaded,
    TResult? Function(MistakesErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MistakesLoadingState value)? loading,
    TResult Function(MistakesLoadedState value)? loaded,
    TResult Function(MistakesErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MistakesStateCopyWith<$Res> {
  factory $MistakesStateCopyWith(
          MistakesState value, $Res Function(MistakesState) then) =
      _$MistakesStateCopyWithImpl<$Res, MistakesState>;
}

/// @nodoc
class _$MistakesStateCopyWithImpl<$Res, $Val extends MistakesState>
    implements $MistakesStateCopyWith<$Res> {
  _$MistakesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MistakesLoadingStateImplCopyWith<$Res> {
  factory _$$MistakesLoadingStateImplCopyWith(_$MistakesLoadingStateImpl value,
          $Res Function(_$MistakesLoadingStateImpl) then) =
      __$$MistakesLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MistakesLoadingStateImplCopyWithImpl<$Res>
    extends _$MistakesStateCopyWithImpl<$Res, _$MistakesLoadingStateImpl>
    implements _$$MistakesLoadingStateImplCopyWith<$Res> {
  __$$MistakesLoadingStateImplCopyWithImpl(_$MistakesLoadingStateImpl _value,
      $Res Function(_$MistakesLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MistakesLoadingStateImpl implements MistakesLoadingState {
  const _$MistakesLoadingStateImpl();

  @override
  String toString() {
    return 'MistakesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MistakesLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> mistakeQuestions) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> mistakeQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> mistakeQuestions)? loaded,
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
    required TResult Function(MistakesLoadingState value) loading,
    required TResult Function(MistakesLoadedState value) loaded,
    required TResult Function(MistakesErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MistakesLoadingState value)? loading,
    TResult? Function(MistakesLoadedState value)? loaded,
    TResult? Function(MistakesErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MistakesLoadingState value)? loading,
    TResult Function(MistakesLoadedState value)? loaded,
    TResult Function(MistakesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MistakesLoadingState implements MistakesState {
  const factory MistakesLoadingState() = _$MistakesLoadingStateImpl;
}

/// @nodoc
abstract class _$$MistakesLoadedStateImplCopyWith<$Res> {
  factory _$$MistakesLoadedStateImplCopyWith(_$MistakesLoadedStateImpl value,
          $Res Function(_$MistakesLoadedStateImpl) then) =
      __$$MistakesLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> mistakeQuestions});
}

/// @nodoc
class __$$MistakesLoadedStateImplCopyWithImpl<$Res>
    extends _$MistakesStateCopyWithImpl<$Res, _$MistakesLoadedStateImpl>
    implements _$$MistakesLoadedStateImplCopyWith<$Res> {
  __$$MistakesLoadedStateImplCopyWithImpl(_$MistakesLoadedStateImpl _value,
      $Res Function(_$MistakesLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mistakeQuestions = null,
  }) {
    return _then(_$MistakesLoadedStateImpl(
      mistakeQuestions: null == mistakeQuestions
          ? _value._mistakeQuestions
          : mistakeQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$MistakesLoadedStateImpl implements MistakesLoadedState {
  const _$MistakesLoadedStateImpl(
      {required final List<Question> mistakeQuestions})
      : _mistakeQuestions = mistakeQuestions;

  final List<Question> _mistakeQuestions;
  @override
  List<Question> get mistakeQuestions {
    if (_mistakeQuestions is EqualUnmodifiableListView)
      return _mistakeQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mistakeQuestions);
  }

  @override
  String toString() {
    return 'MistakesState.loaded(mistakeQuestions: $mistakeQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MistakesLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mistakeQuestions, _mistakeQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_mistakeQuestions));

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MistakesLoadedStateImplCopyWith<_$MistakesLoadedStateImpl> get copyWith =>
      __$$MistakesLoadedStateImplCopyWithImpl<_$MistakesLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> mistakeQuestions) loaded,
    required TResult Function() error,
  }) {
    return loaded(mistakeQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> mistakeQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(mistakeQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> mistakeQuestions)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mistakeQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MistakesLoadingState value) loading,
    required TResult Function(MistakesLoadedState value) loaded,
    required TResult Function(MistakesErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MistakesLoadingState value)? loading,
    TResult? Function(MistakesLoadedState value)? loaded,
    TResult? Function(MistakesErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MistakesLoadingState value)? loading,
    TResult Function(MistakesLoadedState value)? loaded,
    TResult Function(MistakesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MistakesLoadedState implements MistakesState {
  const factory MistakesLoadedState(
          {required final List<Question> mistakeQuestions}) =
      _$MistakesLoadedStateImpl;

  List<Question> get mistakeQuestions;

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MistakesLoadedStateImplCopyWith<_$MistakesLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MistakesErrorStateImplCopyWith<$Res> {
  factory _$$MistakesErrorStateImplCopyWith(_$MistakesErrorStateImpl value,
          $Res Function(_$MistakesErrorStateImpl) then) =
      __$$MistakesErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MistakesErrorStateImplCopyWithImpl<$Res>
    extends _$MistakesStateCopyWithImpl<$Res, _$MistakesErrorStateImpl>
    implements _$$MistakesErrorStateImplCopyWith<$Res> {
  __$$MistakesErrorStateImplCopyWithImpl(_$MistakesErrorStateImpl _value,
      $Res Function(_$MistakesErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MistakesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MistakesErrorStateImpl implements MistakesErrorState {
  const _$MistakesErrorStateImpl();

  @override
  String toString() {
    return 'MistakesState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MistakesErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> mistakeQuestions) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> mistakeQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> mistakeQuestions)? loaded,
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
    required TResult Function(MistakesLoadingState value) loading,
    required TResult Function(MistakesLoadedState value) loaded,
    required TResult Function(MistakesErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MistakesLoadingState value)? loading,
    TResult? Function(MistakesLoadedState value)? loaded,
    TResult? Function(MistakesErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MistakesLoadingState value)? loading,
    TResult Function(MistakesLoadedState value)? loaded,
    TResult Function(MistakesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MistakesErrorState implements MistakesState {
  const factory MistakesErrorState() = _$MistakesErrorStateImpl;
}
