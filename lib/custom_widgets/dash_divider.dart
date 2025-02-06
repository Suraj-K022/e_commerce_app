import 'package:flutter/material.dart';

class VerticalDashedDivider extends StatelessWidget {
  final double dashWidth;
  final double dashHeight;
  final Color color;

  const VerticalDashedDivider({
    Key? key,
    this.dashWidth = 1,
    this.dashHeight = 8,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(dashWidth, double.infinity),
      painter: _VerticalDashedLinePainter(
        dashWidth: dashWidth,
        dashHeight: dashHeight,
        color: color,
      ),
    );
  }
}

class _VerticalDashedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashHeight;
  final Color color;

  _VerticalDashedLinePainter({
    required this.dashWidth,
    required this.dashHeight,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = dashWidth
      ..style = PaintingStyle.stroke;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashHeight),
        paint,
      );
      startY += dashHeight * 2; // Gap between dashes
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
