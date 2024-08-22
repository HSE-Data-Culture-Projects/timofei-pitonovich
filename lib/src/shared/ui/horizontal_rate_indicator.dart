import 'package:flutter/material.dart';

class HorizontalRateIndicator extends StatelessWidget {
  const HorizontalRateIndicator({
    required this.value,
    this.fillColor,
    this.trackColor,
    super.key,
  });

  /// Значение от 0 до 1. Влияет на заполенность шкалы
  final double value;

  /// Цвет фона
  final Color? fillColor;

  /// Цвет полосы
  final Color? trackColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomPaint(
      painter: _HorizontalRateIndicatorPainter(
        value: value,
        fillColor: fillColor ?? theme.colorScheme.primary,
        trackColor: trackColor ?? theme.colorScheme.secondary,
      ),
      child: const SizedBox(height: 4),
    );
  }
}

class _HorizontalRateIndicatorPainter extends CustomPainter {
  _HorizontalRateIndicatorPainter({
    required this.value,
    required this.fillColor,
    required this.trackColor,
  })  : fillPaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = fillColor
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round,
        trackPaint = Paint()
          ..style = PaintingStyle.stroke
          ..color = trackColor
          ..strokeWidth = 4;

  final double value;
  final Color fillColor;
  final Color trackColor;

  final Paint fillPaint;
  final Paint trackPaint;

  @override
  void paint(Canvas canvas, Size size) {
    final middleHeight = size.height / 2;
    canvas
      ..drawLine(
        Offset(0, middleHeight),
        Offset(size.width, middleHeight),
        trackPaint,
      )
      ..drawLine(
        Offset(0, middleHeight),
        Offset(size.width * value, middleHeight),
        fillPaint,
      );
  }

  @override
  bool shouldRepaint(covariant _HorizontalRateIndicatorPainter oldDelegate) =>
      oldDelegate.value != value ||
      oldDelegate.fillColor != fillColor ||
      oldDelegate.trackColor != trackColor;
}
