import 'package:flutter/material.dart';

class OneMorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OneMorePage();
  }
}

class _OneMorePage extends State<OneMorePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("one more"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            DemoCellWidget(
              number: 4,
            ),
            SizedBox(
              width: 8,
            ),
            DemoCellWidget(
              number: 5,
            ),
            SizedBox(
              width: 8,
            ),
            DemoCellWidget(
              number: 6,
            ),
            SizedBox(
              width: 8,
            ),
            DemoCellWidget(
              number: 7,
            ),
          ],
        ),
      ),
    );
  }
}

class DemoCellWidget extends StatelessWidget {
  DemoCellWidget({this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: createView(number),
      ),
    );
  }

  List<Widget> createView(int number) {
    var array = <Widget>[];
    for (int i = number; i > 0; i--) {
      array.add(Container(
          width: 64,
          height: 33,
          decoration: new BoxDecoration(
            color: Colors.blue,
            borderRadius: i == number
                ? BorderRadius.only(
                    topLeft: Radius.circular(16), topRight: Radius.circular(16))
                : null,
            border: Border.all(color: Colors.black, width: 0.5),
          ),
          child: i == number
              ? Center(
                  child: Text(
                    "$i",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              : null));
    }
    return array;
  }
}
