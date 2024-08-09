import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DcTag extends StatelessWidget {
  const DcTag({
    super.key,
    required this.text,
    required this.tagColor,
    required this.borderColor,
    required this.textColor,
    this.icon,
    this.onTap,
  });

  final String text;
  final Color tagColor;
  final Color borderColor;
  final Color textColor;
  final AssetIcon? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(16),
        color: tagColor,
      ),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: context.fontsTheme.dcBodyLarge.copyWith(
              color: textColor,
            ),
          ),
          if (icon != null) ...<Widget>[
            const SizedBox(width: 4),
            InkWell(
              onTap: onTap,
              child: DcUniversalAssetImage(
                icon!,
                height: 18,
                width: 18,
                fillWithColor: textColor,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
