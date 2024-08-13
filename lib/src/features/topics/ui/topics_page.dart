import 'package:app/src/features/questions/ui/pages/questions_page.dart';
import 'package:app/src/features/topics/topics.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key, required this.exam});

  final Exam exam;

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
          for (final topic in widget.exam.topics) ...<Widget>[
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
    );
  }
}
