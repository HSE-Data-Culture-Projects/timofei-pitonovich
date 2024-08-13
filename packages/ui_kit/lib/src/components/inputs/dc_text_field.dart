import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

import 'widgets/dc_text_field_content.dart';

/// Перечисление возможных состояний текстового поля.
enum DcInputFieldState {
  /// Состояние по умолчанию, когда текстовое поле доступно для редактирования.
  enabled,

  /// Состояние ошибки текстового поля.
  error,
}

/// Текстовое поле. Является альтернативой [TextFormField] или [TextField].
class DcTextField extends StatefulWidget {
  /// Создаёт [DcTextField].
  const DcTextField({
    required this.label,
    this.controller,
    this.textCapitalization,
    this.maxLength,
    this.inputFormatters,
    this.onSaved,
    this.onFieldSubmitted,
    this.onChanged,
    this.leftIcon,
    this.onLeftIconTap,
    this.rightIcon,
    this.onRightIconTap,
    this.keyboardType,
    this.textInputAction,
    this.initialValue,
    this.errorText,
    this.state = DcInputFieldState.enabled,
    this.hideText = false,
    super.key,
  }) : assert(
          (errorText != null && state == DcInputFieldState.error) ||
              errorText == null,
          'There can be no error text if state is not error',
        );

  /// Форматтеры текста.
  final List<TextInputFormatter>? inputFormatters;

  /// Учет того, как проставляются заглавные буквы в текстовом поле.
  final TextCapitalization? textCapitalization;

  /// Действие, выполняемое при нажатии на текстовое поле
  final TextInputAction? textInputAction;

  /// Тип клавиатуры, открываемой при вводе значения в текстовое поле.
  final TextInputType? keyboardType;

  /// Максимальная длина строки, допустимая в текстовом поле.
  final int? maxLength;

  /// Первоначальное значение, введённое в текстовое поле.
  final String? initialValue;

  /// Функция, выполняемая при сохранении значения текстового поля.
  final void Function(String? value)? onSaved;

  /// Функция, выполняемая при отправке значения текстового поля.
  final void Function(String value)? onFieldSubmitted;

  /// Функция, выполняемая при изменении текстового поля.
  final void Function(String value)? onChanged;

  /// Виджет (иконка) в левой части текстового поля.
  final Widget? leftIcon;

  /// Действие при нажатии на виджет (иконку) в левой части текстового поля.
  final VoidCallback? onLeftIconTap;

  /// Виджет (иконка) в правой части текстового поля.
  final Widget? rightIcon;

  /// Действие при нажатии на виджет (иконку) в правой части текстового поля.
  final VoidCallback? onRightIconTap;

  /// Контроллер текстового поля для получения введённого значения и других
  /// операций.
  final TextEditingController? controller;

  /// Текст, используемый в качестве хинта в текстовом поле.
  final String label;

  /// Состояние текстового поля. По умолчанию enabled (доступно для
  /// редактирования).
  final DcInputFieldState state;

  /// Текст ошибки, выводимый под текстовым полем.
  final String? errorText;

  final bool hideText;

  @override
  State<DcTextField> createState() => _DcTextFieldState();
}

class _DcTextFieldState extends State<DcTextField>
    with SingleTickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();

  late final AnimationController _controller;

  late final TextEditingController _textEditingController = widget.controller ??
      TextEditingController(
        text: widget.initialValue,
      );

  late final EdgeInsets _margin = EdgeInsets.only(
    left: widget.leftIcon == null ? 16 : 0,
    top: 9.5,
    bottom: 12,
    right: widget.rightIcon == null ? 16 : 0,
  );

  Color? _textColor;
  Color? _initialBorderColor;
  Color? _borderColor;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    if (shouldBeExpanded) {
      _controller.value = 1;
    }
    _textEditingController.addListener(handleChange);
    _focusNode.addListener(handleChange);
    _focusNode.addListener(changeBorderColor);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_textColor == null &&
        _initialBorderColor == null &&
        _borderColor == null) {
      _textColor = context.colorScheme.secondary;
      _initialBorderColor = switch (widget.state) {
        DcInputFieldState.error => context.colorScheme.negative,
        _ => context.colorScheme.secondary,
      };
      _borderColor = _initialBorderColor;
    }
  }

  @override
  void didUpdateWidget(covariant DcTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state != widget.state) {
      _initialBorderColor = switch (widget.state) {
        DcInputFieldState.error => context.colorScheme.negative,
        _ => context.colorScheme.secondary,
      };
      _borderColor = _initialBorderColor;
    }
  }

  bool get shouldBeExpanded {
    return _focusNode.hasFocus || _textEditingController.text.isNotEmpty;
  }

  void handleChange() {
    if (shouldBeExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  void changeBorderColor() {
    if (_focusNode.hasFocus) {
      setState(() {
        _borderColor = context.colorScheme.primary;
      });
    } else {
      setState(() {
        _borderColor = _initialBorderColor;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedBuilder(
          animation: _controller,
          child: TextFormField(
            enabled: true,
            focusNode: _focusNode,
            keyboardType: widget.keyboardType,
            controller: _textEditingController,
            style: context.fontsTheme.dcBodyLarge.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
            onChanged: widget.onChanged,
            onFieldSubmitted: (value) => widget.onFieldSubmitted?.call(value),
            onSaved: (newValue) => widget.onSaved?.call(newValue),
            inputFormatters: widget.inputFormatters,
            maxLength: widget.maxLength,
            textInputAction: widget.textInputAction,
            obscureText: widget.hideText,
            obscuringCharacter: '·',
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              fillColor: Colors.transparent,
              filled: true,
              isDense: true,
            ),
          ),
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 56,
                  child: Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: _borderColor ?? context.colorScheme.secondary,
                        ),
                      ),
                      child: SizedBox(
                        height: Tween<double>(
                          begin: 56,
                          end: 56,
                        ).evaluate(_controller),
                        child: Padding(
                          padding: _margin,
                          child: Row(
                            children: [
                              if (widget.leftIcon != null)
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 16,
                                  onPressed: widget.onLeftIconTap?.call,
                                  icon: widget.leftIcon!,
                                ),
                              Expanded(
                                child: DcTextFieldContent(
                                  label: widget.label,
                                  textColor: _textColor!,
                                  animationController: _controller,
                                  child: child,
                                ),
                              ),
                              if (widget.rightIcon != null)
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 16,
                                  onPressed: widget.onRightIconTap?.call,
                                  icon: widget.rightIcon!,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (widget.errorText != null) const SizedBox(height: 8),
                if (widget.errorText != null)
                  Text(
                    widget.errorText!,
                    style: context.fontsTheme.dcLabelMedium.copyWith(
                      color: context.colorScheme.negative,
                    ),
                  )
              ],
            );
          },
        ),
      ],
    );
  }
}
