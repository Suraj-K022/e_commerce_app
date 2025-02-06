import 'dart:ui';

import 'package:flutter/material.dart';

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  final double strokeWidth;
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double borderRadius;

  const DashedBorderContainer({
    Key? key,
    required this.child,
    this.strokeWidth = 2.0,
    this.dashWidth = 5.0,
    this.dashSpacing = 3.0,
    this.color = Colors.black,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(
        strokeWidth: strokeWidth,
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
        color: color,
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(strokeWidth),
        child: child,
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  final double strokeWidth;
  final double dashWidth;
  final double dashSpacing;
  final Color color;
  final double borderRadius;

  DashedBorderPainter({
    required this.strokeWidth,
    required this.dashWidth,
    required this.dashSpacing,
    required this.color,
    required this.borderRadius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final RRect rRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(borderRadius),
    );

    final Path path = Path()..addRRect(rRect);
    final PathMetrics pathMetrics = path.computeMetrics();

    for (final PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        final Tangent? tangent = pathMetric.getTangentForOffset(distance);
        if (tangent != null) {
          canvas.drawLine(
            tangent.position,
            tangent.position + tangent.vector * dashWidth,
            paint,
          );
        }
        distance += dashWidth + dashSpacing;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
