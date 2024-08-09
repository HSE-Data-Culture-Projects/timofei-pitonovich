import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class IconBackdrop extends StatelessWidget {
  final Widget icon;
  final String? text;
  final VoidCallback? onTap;

  const IconBackdrop({
    super.key,
    required this.icon,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: text == null ? null : 88,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: context.colorScheme.tertiaryBlue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: icon,
              ),
            ),
            if (text != null) ...[
              const SizedBox(height: 4),
              Text(
                text!,
                style: context.fontsTheme.dcLabelLarge,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              )
            ],
          ],
        ),
      ),
    );
  }
}
