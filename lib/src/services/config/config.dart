import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

/// Список доступных в приложении языков.
const availableLanguages = <String, Locale>{
  'Русский': Locale('ru'),
  'English': Locale('en'),
};

final selectedLanguageProvider = StateProvider<Locale>(
  (ref) => const Locale('ru'),
);

/// Список доступных в приложении моделей искусственного интеллекта.
const availableAIModels = <String>[
  'Gigachat',
  'Perplexity',
];

final selectedAIModelProvider = StateProvider<String>((ref) => 'Gigachat');

/// Список доступных в приложении цветовых тем.
final availableThemes = <ThemeData>[
  DcThemeData.light,
  DcThemeData.light,
];

const testXml = '''
<?xml version="1.0" encoding="UTF-8"?>
<quiz>
<!-- question: 36  -->
  <question type="truefalse">
    <name>
      <text>true/false</text>
    </name>
    <questiontext format="html">
      <text><![CDATA[<p>descr</p>]]></text>
    </questiontext>
    <generalfeedback format="html">
      <text><![CDATA[<p>test?</p>]]></text>
    </generalfeedback>
    <defaultgrade>1</defaultgrade>
    <penalty>1</penalty>
    <hidden>0</hidden>
    <idnumber></idnumber>
    <answer fraction="100" format="moodle_auto_format">
      <text>true</text>
      <feedback format="html">
        <text><![CDATA[<p>test</p>]]></text>
      </feedback>
    </answer>
    <answer fraction="0" format="moodle_auto_format">
      <text>false</text>
      <feedback format="html">
        <text><![CDATA[<p>teste3</p>]]></text>
      </feedback>
    </answer>
  </question>

</quiz>

''';
