import 'package:flutter/material.dart';


class SignaturePainterWidget extends CustomPainter {
  SignaturePainterWidget(this.points,{this.lineColor = Colors.blue});

  final List<Offset> points; // Offset:一个不可变的2D浮点偏移。
  final lineColor;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint() //设置笔的属性
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = 12.0

      ..strokeJoin = StrokeJoin.bevel;

    for (int i = 0; i < points.length - 1; i++) {
      //画线
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i], points[i + 1],
            paint);
      //drawLine(Offset p1, Offset p2, Paint paint) → void
//      canvas.drawOval(
//          new Rect.fromCircle(center: points[i], radius: 20.0), paint);
////      canvas.drawOval(rect, paint)
//    canvas.drawCircle(points[i], 20.0, paint);
    }
  }

  /*是否是重绘制*/
  @override
  bool shouldRepaint(SignaturePainterWidget other) => other.points != points;
//  bool shouldRepaint(SignaturePainter other) =>true;

}