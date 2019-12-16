import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'draw_line_widget.dart';
import 'package:hi_flutter_app/src/widget/navigator_process_widget.dart';

class HandWritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HandWritePage();
}

class _HandWritePage extends State<HandWritePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: NavigatorProcessWidget(),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("画图知识点Demo"),
            CustomPaint(
              size: Size(100, 100),
              foregroundPainter:
                  DrawLineWidget(lineColor: Colors.yellowAccent, width: 5.0),
              painter: DrawLineWidget(lineColor: Colors.blueAccent, width: 8.0),
            ),
          ],
        )));
  }
}
