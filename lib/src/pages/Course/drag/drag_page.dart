import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'my_dragg_able_widget.dart';
import 'touch_move_view.dart';

class DragPage extends StatefulWidget {
  @override
  createState() => _DragPage();
}

class _DragPage extends State<DragPage> {
  Offset offset = Offset(0, 0);

  GlobalKey key = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Drag Demo"),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[MyDraggableWidget(key: key,)],
            ),
            Text("position,x:${offset.dx.toStringAsFixed(2)}, y:${offset.dy.toStringAsFixed(2)}"),
            TouchMoveView(callback: (offset){
              setState(() {
                RenderBox box = key.currentContext.findRenderObject();

                this.offset = offset;
              });
            },),
            TouchMoveView()
          ],
        ));
  }
}
