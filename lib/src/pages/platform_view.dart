import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlatformView extends StatefulWidget {
  @override
  createState() => _PlatformView();
}

class _PlatformView extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
     navigationBar: CupertinoNavigationBar(middle: Text("hello"),),
      child: Center(child: Text("请使用platform View 插件进行开发",),),
    );
  }
}
