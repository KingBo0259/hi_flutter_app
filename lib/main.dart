import 'src/pages/home_page.dart';
import 'src/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: true,
      title: 'kingo Flutter Demo',
      theme: CupertinoThemeData(
          primaryColor: Colors.blue,
          barBackgroundColor: Color.fromRGBO(246, 179, 73, 1),
          textTheme: CupertinoTextThemeData(
              navTitleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
              navActionTextStyle: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: Color.fromARGB(255, 251, 237, 176)),
      home: MyHomePage(title: 'Flutter KingBo Home Page'),
      routes: Router.routers,
    );
  }
}
