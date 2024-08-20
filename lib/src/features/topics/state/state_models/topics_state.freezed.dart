// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopicsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> topics) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> topics)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> topics)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicsLoadingState value) loading,
    required TResult Function(TopicsLoadedState value) loaded,
    required TResult Function(TopicsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopicsLoadingState value)? loading,
    TResult? Function(TopicsLoadedState value)? loaded,
    TResult? Function(TopicsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicsLoadingState value)? loading,
    TResult Function(TopicsLoadedState value)? loaded,
    TResult Function(TopicsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
          TopicsState value, $Res Function(TopicsState) then) =
      _$TopicsStateCopyWithImpl<$Res, TopicsState>;
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res, $Val extends TopicsState>
    implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TopicsLoadingStateImplCopyWith<$Res> {
  factory _$$TopicsLoadingStateImplCopyWith(_$TopicsLoadingStateImpl value,
          $Res Function(_$TopicsLoadingStateImpl) then) =
      __$$TopicsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopicsLoadingStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$TopicsLoadingStateImpl>
    implements _$$TopicsLoadingStateImplCopyWith<$Res> {
  __$$TopicsLoadingStateImplCopyWithImpl(_$TopicsLoadingStateImpl _value,
      $Res Function(_$TopicsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopicsLoadingStateImpl implements TopicsLoadingState {
  _$TopicsLoadingStateImpl();

  @override
  String toString() {
    return 'TopicsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopicsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> topics) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> topics)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> topics)? loaded,
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
    required TResult Function(TopicsLoadingState value) loading,
    required TResult Function(TopicsLoadedState value) loaded,
    required TResult Function(TopicsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopicsLoadingState value)? loading,
    TResult? Function(TopicsLoadedState value)? loaded,
    TResult? Function(TopicsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicsLoadingState value)? loading,
    TResult Function(TopicsLoadedState value)? loaded,
    TResult Function(TopicsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopicsLoadingState implements TopicsState {
  factory TopicsLoadingState() = _$TopicsLoadingStateImpl;
}

/// @nodoc
abstract class _$$TopicsLoadedStateImplCopyWith<$Res> {
  factory _$$TopicsLoadedStateImplCopyWith(_$TopicsLoadedStateImpl value,
          $Res Function(_$TopicsLoadedStateImpl) then) =
      __$$TopicsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> topics});
}

/// @nodoc
class __$$TopicsLoadedStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$TopicsLoadedStateImpl>
    implements _$$TopicsLoadedStateImplCopyWith<$Res> {
  __$$TopicsLoadedStateImplCopyWithImpl(_$TopicsLoadedStateImpl _value,
      $Res Function(_$TopicsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topics = null,
  }) {
    return _then(_$TopicsLoadedStateImpl(
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$TopicsLoadedStateImpl implements TopicsLoadedState {
  _$TopicsLoadedStateImpl({required final List<Topic> topics})
      : _topics = topics;

  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'TopicsState.loaded(topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicsLoadedStateImplCopyWith<_$TopicsLoadedStateImpl> get copyWith =>
      __$$TopicsLoadedStateImplCopyWithImpl<_$TopicsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> topics) loaded,
    required TResult Function() error,
  }) {
    return loaded(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> topics)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> topics)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopicsLoadingState value) loading,
    required TResult Function(TopicsLoadedState value) loaded,
    required TResult Function(TopicsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopicsLoadingState value)? loading,
    TResult? Function(TopicsLoadedState value)? loaded,
    TResult? Function(TopicsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicsLoadingState value)? loading,
    TResult Function(TopicsLoadedState value)? loaded,
    TResult Function(TopicsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TopicsLoadedState implements TopicsState {
  factory TopicsLoadedState({required final List<Topic> topics}) =
      _$TopicsLoadedStateImpl;

  List<Topic> get topics;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicsLoadedStateImplCopyWith<_$TopicsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopicsErrorStateImplCopyWith<$Res> {
  factory _$$TopicsErrorStateImplCopyWith(_$TopicsErrorStateImpl value,
          $Res Function(_$TopicsErrorStateImpl) then) =
      __$$TopicsErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopicsErrorStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$TopicsErrorStateImpl>
    implements _$$TopicsErrorStateImplCopyWith<$Res> {
  __$$TopicsErrorStateImplCopyWithImpl(_$TopicsErrorStateImpl _value,
      $Res Function(_$TopicsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TopicsErrorStateImpl implements TopicsErrorState {
  _$TopicsErrorStateImpl();

  @override
  String toString() {
    return 'TopicsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TopicsErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> topics) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> topics)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> topics)? loaded,
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
    required TResult Function(TopicsLoadingState value) loading,
    required TResult Function(TopicsLoadedState value) loaded,
    required TResult Function(TopicsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopicsLoadingState value)? loading,
    TResult? Function(TopicsLoadedState value)? loaded,
    TResult? Function(TopicsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopicsLoadingState value)? loading,
    TResult Function(TopicsLoadedState value)? loaded,
    TResult Function(TopicsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopicsErrorState implements TopicsState {
  factory TopicsErrorState() = _$TopicsErrorStateImpl;
}
