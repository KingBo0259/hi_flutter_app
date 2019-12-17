import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'draw_line_widget.dart';
import 'signature_painter_widget.dart';
import 'package:hi_flutter_app/src/widget/navigator_process_widget.dart';

class HandWritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HandWritePage();
}

class _HandWritePage extends State<HandWritePage> {
  List<Offset> _points = <Offset>[];

  Size paindSize = Size(300, 300);

  int  value = 0;

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
            Text("画直线demo"),
            SizedBox(
              height: 10,
            ),
            CustomPaint(
              size: Size(100, 100),
              foregroundPainter:
                  DrawLineWidget(lineColor: Colors.yellowAccent, width: 5.0),
              painter: DrawLineWidget(lineColor: Colors.blueAccent, width: 8.0),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("涂鸦画图"),
                CupertinoButton(
                  child: Text("reset"),
                  onPressed: () {
                    setState(() {
                      _points = List();
                    });
                  },
                )
              ],
            ),
            Container(
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: <Widget>[
                  GestureDetector(
                    onPanUpdate: (DragUpdateDetails details) {
//                  RenderBox referenceBox = context.findRenderObject();
//                   //转化成全局坐标
//                  Offset localPosition = referenceBox.globalToLocal(details.globalPosition);
                      setState(() {
                        if (paindSize.contains(details.localPosition))
                          _points = new List.from(_points)
                            ..add(details.localPosition);
                      });
                    },
                    onPanEnd: (DragEndDetails details) => _points.add(null),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(12))),
                      width: paindSize.width,
                      height: paindSize.height,
                     ),
                  ),
                  CustomPaint(
                    painter: SignaturePainterWidget(_points,
                        lineColor: Colors.white),
                  )
                ],
              ),
            ),
            GestureDetector(child: Text("点击我$value"),onTap: (){
              setState(() {
                value++;
              });
            },)
          ],
        )));
  }
}
