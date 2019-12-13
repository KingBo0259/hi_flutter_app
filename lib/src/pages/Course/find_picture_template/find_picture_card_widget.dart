import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flip_card/flip_card.dart';

class FindPictureCardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FindPictureCardWidget();
}

class _FindPictureCardWidget extends State<FindPictureCardWidget> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  void initState() {
    super.initState();

    startAnimation();
  }

  startAnimation() {
    Future.delayed(Duration(milliseconds: 300), () {
      cardKey.currentState.toggleCard();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        key: cardKey,
        flipOnTouch: false,
        direction: FlipDirection.HORIZONTAL,
        front: Container(
          width: 150,
          height: 150,
          child: Image.asset(
            "images/find_picture_card_back_green.png",
            fit: BoxFit.fill,
          ),
        ),
        back: Container(
            width: 150,
            height: 150,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset(
                  "images/find_picture_card_green.png",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/judgement_graph_weight_3.png",
                  fit: BoxFit.fill,
                ),
                Text("I am tiger")
              ],
            )));
  }
}
