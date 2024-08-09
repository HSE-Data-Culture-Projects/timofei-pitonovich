import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DcCard extends StatelessWidget {
  const DcCard({
    super.key,
    required this.child,
    this.width,
  });

  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.colorScheme.primaryWhite,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.secondaryDarkGray.withOpacity(0.15),
            offset: const Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
