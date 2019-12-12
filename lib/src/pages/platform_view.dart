import 'package:flutter/material.dart';


class PlatformView extends StatefulWidget {
  @override
  createState() =>  _PlatformView();
}


class _PlatformView extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("调用嵌入native View"),),
      body: Text('请嵌入iOS View'),
      
    );
  }

}