import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hi_flutter_app/src/widget/navigator_process_widget.dart';
import 'find_picture_card_widget.dart';

class FindPictureTemplatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FindPictureTemplatePage();
}

class _FindPictureTemplatePage extends State<FindPictureTemplatePage> {

  GlobalKey<FindPictureCardState> card1 =  GlobalKey<FindPictureCardState>();
  GlobalKey<FindPictureCardState> card2 =  GlobalKey<FindPictureCardState>();
  GlobalKey<FindPictureCardState> card3 =  GlobalKey<FindPictureCardState>();
  GlobalKey<FindPictureCardState> card4 =  GlobalKey<FindPictureCardState>();

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
                FindPictureCardWidget(key: card1,),
                SizedBox(
                  width: 10,
                ),
                FindPictureCardWidget(key: card2,)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FindPictureCardWidget(key: card3,),
                SizedBox(
                  width: 10,
                ),
                FindPictureCardWidget(key: card4,)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton.filled(child: Text("翻转"), onPressed: () {
              card1.currentState.toggleCard();
              card2.currentState.toggleCard();
              card3.currentState.toggleCard();
              card4.currentState.toggleCard();
            })
          ],
        ),
      ),
    );
  }
}
