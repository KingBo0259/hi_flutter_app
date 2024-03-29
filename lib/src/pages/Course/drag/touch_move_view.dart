import 'package:flutter/material.dart';
import 'dart:math';

typedef TouchMoveDragUpdateCallback = void Function(Offset offset);

class TouchMoveView extends StatefulWidget {
  TouchMoveView({this.callback});

  TouchMoveDragUpdateCallback callback;

  @override
  State<StatefulWidget> createState() {
    return TouchMoveState();
  }
}

class TouchMoveState extends State<TouchMoveView> {
  TouchMovePainter painter;

  //静止状态下的offset
  Offset idleOffset = Offset(0, 0);

  //本次移动的offset
  Offset moveOffset = Offset(0, 0);

  //最后一次down事件的offset
  Offset lastStartOffset = Offset(0, 0);

  @override
  void initState() {
    painter = TouchMovePainter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
        offset: moveOffset,
        child: Container(
          height: 50,
          width: 50,
          child: GestureDetector(
            onPanStart: (detail) {
              setState(() {
                lastStartOffset = detail.globalPosition;
                painter = TouchMovePainter();
                painter.painterColor = Colors.green;
              });
            },
            onPanUpdate: (detail) {
              setState(() {
                if (widget.callback != null) {
                  widget.callback(detail.globalPosition);
                }
                moveOffset =
                    detail.globalPosition - lastStartOffset + idleOffset;
//                moveOffset =
//                    Offset(max(0, moveOffset.dx), max(0, moveOffset.dy));
                debugPrint("$moveOffset");
              });
            },
            onPanEnd: (detail) {
              setState(() {
                painter = TouchMovePainter();
                painter.painterColor = Colors.red;
                idleOffset = moveOffset * 1;
              });
            },
            child: CustomPaint(
              painter: painter,
            ),
          ),
        ));
  }
}

class TouchMovePainter extends CustomPainter {
  var painter = Paint();
  var painterColor = Colors.red;

  @override
  void paint(Canvas canvas, Size size) {
    painter.color = painterColor;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        min(size.height, size.width) / 2, painter);
  }

  @override
  bool shouldRepaint(TouchMovePainter oldDelegate) {
    return oldDelegate.painterColor != painterColor;
  }
}
