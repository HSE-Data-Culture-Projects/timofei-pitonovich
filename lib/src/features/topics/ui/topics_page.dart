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
  final topics = <String>[
    'Тема 1',
    'Topic 2',
    'Topic 3',
    'Theme 4',
    'Topic 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.exam.name,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
          for (final topic in widget.exam.topics) ...<Widget>[
            DcElevatedButton(
              text: topic.name,
              onPressed: () {},
            ),
            const SizedBox(height: 8),
          ]
        ],
      ),
    );
  }
}
