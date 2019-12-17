import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, String> mapTitle = {
    "flutter 集成 native View": "platform_view",
    "OneMore": "oneMore",
    "FindPictureTemplatePage": "FindPictureTemplatePage",
    "HandDrawLine": "HandWritePage",
    "Lottie": "myLottie_page"
  };

  final List<Map<String, String>> myTitleList = [
    {"title": "flutter 集成 native View", "router": "platform_view"},
    {"title": "OneMore", "router": "oneMore"},
    {"title": "FindPictureTemplatePage", "router": "FindPictureTemplatePage"},
    {"title": "HandDrawLine", "router": "HandWritePage"},
    {"title": "Lottie", "router": "myLottie_page"},
    {"title": "DragPage", "router": "drag_page"}
  ];

  var _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget createCupertinoBody() {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(widget.title),
        ),
        child: Center(
          child: Column(
              children: myTitleList.map((item) {
            return Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: CupertinoButton.filled(
                      child: Text(item["title"]),
                      onPressed: () {
                        Navigator.pushNamed(context, item["router"]);
                      }),
                ))
              ],
            );
          }).toList()),
        ));
  }

  Widget createMaterialBody() {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "platform_view");
                },
                icon: Icon(Icons.exposure_plus_1),
                label: Text("flutter 集成 native View")),
            RaisedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "demo1_1page");
                },
                icon: Icon(Icons.exposure_plus_2),
                label: Text("Demo1"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  Widget build(BuildContext context) {
    return createCupertinoBody();
  }
}
