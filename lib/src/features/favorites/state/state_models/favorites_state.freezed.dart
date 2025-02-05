// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> favoriteQuestions) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> favoriteQuestions)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> favoriteQuestions)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesLoadingState value) loading,
    required TResult Function(FavoritesLoadedState value) loaded,
    required TResult Function(FavoritesErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadingState value)? loading,
    TResult? Function(FavoritesLoadedState value)? loaded,
    TResult? Function(FavoritesErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadingState value)? loading,
    TResult Function(FavoritesLoadedState value)? loaded,
    TResult Function(FavoritesErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FavoritesLoadingStateImplCopyWith<$Res> {
  factory _$$FavoritesLoadingStateImplCopyWith(
          _$FavoritesLoadingStateImpl value,
          $Res Function(_$FavoritesLoadingStateImpl) then) =
      __$$FavoritesLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesLoadingStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadingStateImpl>
    implements _$$FavoritesLoadingStateImplCopyWith<$Res> {
  __$$FavoritesLoadingStateImplCopyWithImpl(_$FavoritesLoadingStateImpl _value,
      $Res Function(_$FavoritesLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesLoadingStateImpl implements FavoritesLoadingState {
  const _$FavoritesLoadingStateImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> favoriteQuestions) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> favoriteQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> favoriteQuestions)? loaded,
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
    required TResult Function(FavoritesLoadingState value) loading,
    required TResult Function(FavoritesLoadedState value) loaded,
    required TResult Function(FavoritesErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadingState value)? loading,
    TResult? Function(FavoritesLoadedState value)? loaded,
    TResult? Function(FavoritesErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadingState value)? loading,
    TResult Function(FavoritesLoadedState value)? loaded,
    TResult Function(FavoritesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoadingState implements FavoritesState {
  const factory FavoritesLoadingState() = _$FavoritesLoadingStateImpl;
}

/// @nodoc
abstract class _$$FavoritesLoadedStateImplCopyWith<$Res> {
  factory _$$FavoritesLoadedStateImplCopyWith(_$FavoritesLoadedStateImpl value,
          $Res Function(_$FavoritesLoadedStateImpl) then) =
      __$$FavoritesLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> favoriteQuestions});
}

/// @nodoc
class __$$FavoritesLoadedStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadedStateImpl>
    implements _$$FavoritesLoadedStateImplCopyWith<$Res> {
  __$$FavoritesLoadedStateImplCopyWithImpl(_$FavoritesLoadedStateImpl _value,
      $Res Function(_$FavoritesLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteQuestions = null,
  }) {
    return _then(_$FavoritesLoadedStateImpl(
      favoriteQuestions: null == favoriteQuestions
          ? _value._favoriteQuestions
          : favoriteQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadedStateImpl implements FavoritesLoadedState {
  const _$FavoritesLoadedStateImpl(
      {required final List<Question> favoriteQuestions})
      : _favoriteQuestions = favoriteQuestions;

  final List<Question> _favoriteQuestions;
  @override
  List<Question> get favoriteQuestions {
    if (_favoriteQuestions is EqualUnmodifiableListView)
      return _favoriteQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteQuestions);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(favoriteQuestions: $favoriteQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteQuestions, _favoriteQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteQuestions));

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadedStateImplCopyWith<_$FavoritesLoadedStateImpl>
      get copyWith =>
          __$$FavoritesLoadedStateImplCopyWithImpl<_$FavoritesLoadedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> favoriteQuestions) loaded,
    required TResult Function() error,
  }) {
    return loaded(favoriteQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> favoriteQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(favoriteQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> favoriteQuestions)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favoriteQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesLoadingState value) loading,
    required TResult Function(FavoritesLoadedState value) loaded,
    required TResult Function(FavoritesErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadingState value)? loading,
    TResult? Function(FavoritesLoadedState value)? loaded,
    TResult? Function(FavoritesErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadingState value)? loading,
    TResult Function(FavoritesLoadedState value)? loaded,
    TResult Function(FavoritesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoadedState implements FavoritesState {
  const factory FavoritesLoadedState(
          {required final List<Question> favoriteQuestions}) =
      _$FavoritesLoadedStateImpl;

  List<Question> get favoriteQuestions;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesLoadedStateImplCopyWith<_$FavoritesLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesErrorStateImplCopyWith<$Res> {
  factory _$$FavoritesErrorStateImplCopyWith(_$FavoritesErrorStateImpl value,
          $Res Function(_$FavoritesErrorStateImpl) then) =
      __$$FavoritesErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesErrorStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesErrorStateImpl>
    implements _$$FavoritesErrorStateImplCopyWith<$Res> {
  __$$FavoritesErrorStateImplCopyWithImpl(_$FavoritesErrorStateImpl _value,
      $Res Function(_$FavoritesErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoritesErrorStateImpl implements FavoritesErrorState {
  const _$FavoritesErrorStateImpl();

  @override
  String toString() {
    return 'FavoritesState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Question> favoriteQuestions) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Question> favoriteQuestions)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Question> favoriteQuestions)? loaded,
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
    required TResult Function(FavoritesLoadingState value) loading,
    required TResult Function(FavoritesLoadedState value) loaded,
    required TResult Function(FavoritesErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadingState value)? loading,
    TResult? Function(FavoritesLoadedState value)? loaded,
    TResult? Function(FavoritesErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadingState value)? loading,
    TResult Function(FavoritesLoadedState value)? loaded,
    TResult Function(FavoritesErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesErrorState implements FavoritesState {
  const factory FavoritesErrorState() = _$FavoritesErrorStateImpl;
}
