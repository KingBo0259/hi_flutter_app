import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDraggableWidget extends StatelessWidget {
  final data;

  const MyDraggableWidget({this.data = "myDraggable", Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable(
      ignoringFeedbackSemantics:  true,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.red[500],
          child: Center(
            child: Text("Draggable"),
          ),
        ),
        feedback: Container(
          width: 150,
          height: 150,
          color: Colors.white,
          child: Icon(Icons.exposure),
        )
    );
  }
}
