import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ModalHeader extends StatelessWidget {
  const ModalHeader({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(
            height: 24,
            width: 24,
          ),
          Text(text, style: context.fontsTheme.dcHeadlineMedium),
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: DcUniversalAssetImage(AssetIcon.close),
          )
        ],
      ),
    );
  }
}
