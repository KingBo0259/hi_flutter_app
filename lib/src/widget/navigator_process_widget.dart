import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavigatorProcessWidget extends StatefulWidget {
  NavigatorProcessWidget({this.max = 10, this.current = 3});

  final int max;
  final int current;

  @override
  createState() => _NavigatorProcessWidget();
}

class _NavigatorProcessWidget extends State<NavigatorProcessWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 36,
      width: 340,
      decoration: BoxDecoration(
          color:  Colors.amberAccent,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: Colors.white, width: 2)),
      child: Row(
        children: createItems(widget.max),
      ),
    );
  }

  List<Widget> createItems(int number) {
    var items = <Widget>[];
    for (int i = 0; i < number; i++) {
      items.add(Expanded(
        flex: 1,
        child: Padding(
            padding: i == 0 ? EdgeInsets.fromLTRB(8, 2, 2, 2) : (i == number - 1 ? EdgeInsets.fromLTRB(2, 2, 8, 2):EdgeInsets.all(2)),
            child: Container(
              decoration: BoxDecoration(
                  color: i <= widget.current ? Colors.yellowAccent : Colors.orangeAccent,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
            )),
      ));
    }
    return items;
  }
}
