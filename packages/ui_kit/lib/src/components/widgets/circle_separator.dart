import 'package:flutter/material.dart';

class CircleSeparator extends StatelessWidget {
  const CircleSeparator({
    super.key,
    this.color = Colors.black,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
