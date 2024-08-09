import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DcTextFieldContent extends StatelessWidget {
  const DcTextFieldContent({
    required this.child,
    required this.label,
    required this.textColor,
    this.animationController,
    super.key,
  }) : hasAnimation = animationController != null;

  final Widget? child;
  final String label;
  final Color textColor;
  final AnimationController? animationController;
  final bool hasAnimation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: hasAnimation
              ? EdgeInsets.only(
                  top: Tween<double>(
                    begin: 0,
                    end: 56 / 2 - 12,
                  ).evaluate(animationController!),
                )
              : const EdgeInsets.only(top: 16),
          child: child,
        ),
        Positioned.fill(
          child: Align(
            alignment: hasAnimation
                ? AlignmentTween(
                    begin: Alignment.centerLeft,
                    end: Alignment.topLeft,
                  ).evaluate(animationController!)
                : Alignment.topLeft,
            child: IgnorePointer(
              child: DefaultTextStyle(
                style: hasAnimation
                    ? TextStyleTween(
                        begin: context.fontsTheme.dcBodyLarge
                            .copyWith(color: textColor),
                        end: context.fontsTheme.dcLabelLarge
                            .copyWith(color: textColor),
                      ).evaluate(animationController!)
                    : context.fontsTheme.dcLabelLarge.copyWith(
                        color: textColor,
                      ),
                child: Text(label),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
