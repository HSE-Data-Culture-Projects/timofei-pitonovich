import 'package:app/src/features/topics/topics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topics_state.freezed.dart';

@freezed
sealed class TopicsState with _$TopicsState {
  factory TopicsState.loading() = TopicsLoadingState;

  factory TopicsState.loaded({required List<Topic> topics}) = TopicsLoadedState;

  factory TopicsState.error() = TopicsErrorState;
}
