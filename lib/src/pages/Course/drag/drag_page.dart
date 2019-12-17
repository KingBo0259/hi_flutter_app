import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class DragPage extends StatefulWidget {
  @override
  createState() => _DragPage();
}

class _DragPage extends State<DragPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text("Drag Demo"),),
        child: Text("Drag Demo")
    );
  }
}