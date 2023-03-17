import 'dart:math';

import 'package:flutter/material.dart';

class CircularPainter extends CustomPainter {
  final Color backgroundColor;
  final Color limeColor;
  final double width;

  CircularPainter({
    required this.backgroundColor,
    required this.limeColor,
    required this.width
  });

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint backgroundLime = Paint()
        ..color =backgroundColor
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = width;

    Paint completeLime = Paint()
    ..color = limeColor
    ..strokeCap = StrokeCap.round
    ..style = PaintingStyle.stroke
    ..strokeWidth = width;

Offset can = Offset(size.width/2, size.height/2);
double radius = min(size.width/2, size.height/2);
double sweepAngle = 2 * pi;
canvas.drawCircle(can, radius, backgroundLime);
canvas.drawArc(Rect.fromCircle(center: can, radius: radius), pi/2, sweepAngle, false, completeLime);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>false;
  }

