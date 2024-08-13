import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

enum ButtonState {
  common,
  loading,
  disabled,
}

enum ButtonHeight {
  medium,
  large,
}

enum ButtonWidth {
  max,
  min,
}

class DcElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final ButtonHeight buttonHeight;
  final ButtonWidth buttonWidth;
  final ButtonState buttonState;

  final Widget? icon;

  const DcElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.buttonHeight = ButtonHeight.large,
    this.buttonWidth = ButtonWidth.max,
    this.buttonState = ButtonState.common,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width(context),
      height: _height,
      child: ElevatedButton(
        onPressed: buttonState == ButtonState.disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          backgroundColor: _getBackgroundColor(context),
          padding: EdgeInsets.zero,
        ),
        child: _child(context),
      ),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    switch (buttonState) {
      case ButtonState.disabled:
        return context.colorScheme.primary.withOpacity(0.5);
      case ButtonState.loading:
        return color ?? context.colorScheme.primary.withOpacity(0.75);
      default:
        return color ?? context.colorScheme.primary;
    }
  }

  double get _height {
    switch (buttonHeight) {
      case ButtonHeight.large:
        return 47;
      case ButtonHeight.medium:
        return 35;
    }
  }

  double? _width(BuildContext context) {
    switch (buttonWidth) {
      case ButtonWidth.min:
        return null;
      case ButtonWidth.max:
        return MediaQuery.sizeOf(context).width;
    }
  }

  Widget _child(BuildContext context) {
    if (buttonState == ButtonState.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (icon == null) {
      return Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: context.fontsTheme.dcBodyLarge.copyWith(
            color: context.textColorScheme.contrast,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          const SizedBox(width: 8),
          Text(
            text,
            textAlign: TextAlign.center,
            style: context.fontsTheme.dcBodyLarge.copyWith(
              color: context.textColorScheme.contrast,
            ),
          ),
        ],
      ),
    );
  }
}
