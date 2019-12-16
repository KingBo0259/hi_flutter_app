import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawLineWidget extends CustomPainter {
  Color lineColor;
  double width;

  DrawLineWidget({this.lineColor, this.width});

  @override
  void paint(Canvas canvas, Size size) {
     Paint _paint =   Paint()
         ..color = lineColor
         ..strokeCap = StrokeCap.round
         ..isAntiAlias = true
         ..strokeWidth = width
         ..style = PaintingStyle.stroke;
     canvas.drawLine(Offset(0.0, 0.0), Offset(100.0, 100.0), _paint);

   }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
