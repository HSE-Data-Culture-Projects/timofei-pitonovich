import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DcTextArea extends StatefulWidget {
  const DcTextArea({
    super.key,
    required this.label,
    this.controller,
    this.initialValue,
    this.onSaved,
    this.onFieldSubmitted,
    this.onChanged,
    this.state = DcInputFieldState.enabled,
  });

  /// Текст, используемый в качестве хинта в текстовом поле.
  final String label;

  /// Контроллер текстового поля для получения введённого значения и других
  /// операций.
  final TextEditingController? controller;

  /// Первоначальное значение, введённое в текстовое поле.
  final String? initialValue;

  /// Функция, выполняемая при сохранении значения текстового поля.
  final void Function(String? value)? onSaved;

  /// Функция, выполняемая при отправке значения текстового поля.
  final void Function(String value)? onFieldSubmitted;

  /// Функция, выполняемая при изменении текстового поля.
  final void Function(String value)? onChanged;

  final DcInputFieldState state;

  @override
  State<DcTextArea> createState() => _DcTextAreaState();
}

class _DcTextAreaState extends State<DcTextArea>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _textEditingController = widget.controller ??
      TextEditingController(
        text: widget.initialValue,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: TextFormField(
        controller: _textEditingController,
        keyboardType: TextInputType.multiline,
        minLines: 8,
        maxLines: 8,
        onChanged: widget.onChanged,
        onFieldSubmitted: (value) => widget.onFieldSubmitted?.call(value),
        onSaved: (newValue) => widget.onSaved?.call(newValue),
        style: context.fontsTheme.dcBodyLarge,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: context.colorScheme.secondaryGray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: context.colorScheme.primaryBlue),
          ),
          hintText: widget.label,
          hintStyle: context.fontsTheme.dcBodyLarge.copyWith(
            color: context.colorScheme.secondaryDarkGray,
          ),
          fillColor: Colors.transparent,
          filled: true,
          isDense: true,
        ),
      ),
    );
  }
}
