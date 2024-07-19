import 'package:flutter/material.dart';

class AngularGradientPainter extends CustomPainter {
  final double percentage;
  final double lineWidth;
  final List<Color> colors;

  AngularGradientPainter({
    required this.percentage,
    required this.lineWidth,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final gradient = SweepGradient(
      startAngle: 0.0,
      endAngle: 3.14 * 2,
      colors: colors,
      stops: List.generate(colors.length, (index) => index / (colors.length - 1)),
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3.14 / 2,
      3.14 * 2 * percentage,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
