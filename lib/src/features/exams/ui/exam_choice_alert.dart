import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../topics/topics.dart';
import '../exams.dart';

class ExamChoiceAlert extends ConsumerWidget {
  const ExamChoiceAlert({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(examsStateHolderProvider).when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (data) => Column(
            mainAxisSize: MainAxisSize.min,
            children: data
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DcElevatedButton(
                      text: e.name,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TopicPage(
                              exam: e,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
                .toList(),
          ),
          error: () => const Center(
            child: Text('Произошла ошибка!'),
          ),
        );
  }
}
