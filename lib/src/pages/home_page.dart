import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              CupertinoButton(
                child: Text("自动+1"),
                color: Colors.blue,
                onPressed: _incrementCounter,
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoButton.filled(
                  child: Text("flutter 集成 native View"),
                  onPressed: () {
                    Navigator.pushNamed(context, "platform_view");
                  }),
              SizedBox(
                height: 10,
              ),
              CupertinoButton.filled(
                  child: Text("OneMore"),
                  onPressed: () {
                    Navigator.pushNamed(context, "oneMore");
                  }),
              SizedBox(
                height: 10,
              ),
              CupertinoButton.filled(
                  child: Text("FindPictureTemplatePage"),
                  onPressed: () {
                    Navigator.pushNamed(context, "FindPictureTemplatePage");
                  }),
              SizedBox(
                height: 10,
              ),
              CupertinoButton.filled(
                  child: Text("HandDrawLine"),
                  onPressed: () {
                    Navigator.pushNamed(context, "HandWritePage");
                  })
            ],
          ),
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
