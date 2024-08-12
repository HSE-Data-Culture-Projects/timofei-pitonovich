import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/questions/ui/question_widget.dart';
import 'package:app/src/services/config/config.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цифровая грамотность'),
      ),
      body: ListView(
        children: <Widget>[
          DcElevatedButton(
            text: 'Вопрос',
            onPressed: () {},
          ),
          QuestionWidget(
            question: QuestionParser().parse(testXml).first,
          )
        ],
      ),
    );
  }
}
