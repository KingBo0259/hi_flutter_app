import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hi_flutter_app/src/widget/navigator_process_widget.dart';
import 'find_picture_card_widget.dart';

class FindPictureTemplatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FindPictureTemplatePage();
}

class _FindPictureTemplatePage extends State<FindPictureTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: NavigatorProcessWidget(),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              FindPictureCardWidget(),
              SizedBox(width: 10,),
              FindPictureCardWidget()
            ],),
            SizedBox(height: 10,),
            Row(
              mainAxisSize: MainAxisSize.min,

              children: <Widget>[
              FindPictureCardWidget(),
              SizedBox(width: 10,),
              FindPictureCardWidget()
            ],),
          ],
        ),
      ),

    );
  }
}

