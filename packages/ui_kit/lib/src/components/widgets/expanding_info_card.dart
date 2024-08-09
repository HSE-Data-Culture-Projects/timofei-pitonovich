import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ExpandingInfoCard extends StatefulWidget {
  const ExpandingInfoCard({
    super.key,
    required this.header,
    required this.content,
  });

  final String header;
  final String content;

  @override
  State<ExpandingInfoCard> createState() => _ExpandingInfoCardState();
}

class _ExpandingInfoCardState extends State<ExpandingInfoCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colorScheme.secondaryDarkGray),
        color: context.colorScheme.primaryLightGray,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.secondaryDarkGray.withOpacity(0.15),
            offset: const Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.header,
                  style: context.fontsTheme.dcHeadlineSmall,
                ),
                // 288 24
                const SizedBox(height: 8),
                Text(
                  widget.content,
                  style: context.fontsTheme.dcBodyMedium,
                  maxLines: isExpanded ? 100 : 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                isExpanded = !isExpanded;
                setState(() {});
              },
              child: DcUniversalAssetImage(
                isExpanded ? AssetIcon.arrowUp : AssetIcon.arrowDown,
              ),
            ),
          )
        ],
      ),
    );
  }
}
