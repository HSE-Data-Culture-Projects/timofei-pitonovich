import 'package:app/src/features/exams/exams.dart';
import 'package:app/src/features/questions/ui/pages/questions_page.dart';
import 'package:app/src/features/topics/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../../shared/shared.dart';

class TopicPage extends ConsumerStatefulWidget {
  const TopicPage({super.key, required this.exam});

  final Exam exam;

  @override
  ConsumerState<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends ConsumerState<TopicPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(topicsManagerProvider).getTopicsByExamId(widget.exam.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.exam.name,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
        backgroundColor: context.colorScheme.background,
      ),
      body: ref.watch(topicsStateHolderProvider).when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (topics) => ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: <Widget>[
                for (final topic in topics) ...<Widget>[
                  DcElevatedButton(
                    text: topic.name,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QuestionsPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                ]
              ],
            ),
            error: () => DcErrorWidget(
              onTryAgainTap: () => ref
                  .read(topicsManagerProvider)
                  .getTopicsByExamId(widget.exam.id),
            ),
          ),
    );
  }
}
