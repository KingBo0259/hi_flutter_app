import 'package:flutter/material.dart';
import 'src/pages/home_page.dart';
import 'src/router/router.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kingo Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter KingBo Home Page'),
      routes: Router.routers,
    );
  }
}

