import 'package:app/src/features/topics/topics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopicsStateHolder extends StateNotifier<TopicsState> {
  TopicsStateHolder() : super(TopicsState.loading());

  void setLoading() {
    if (!mounted) return;
    state = TopicsState.loading();
  }

  void setLoaded(List<Topic> topics) {
    if (!mounted) return;
    state = TopicsState.loaded(topics: topics);
  }

  void setError() {
    if (!mounted) return;
    state = TopicsState.error();
  }
}
