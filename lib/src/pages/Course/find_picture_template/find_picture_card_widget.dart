import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FindPictureCardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FindPictureCardWidget();
}

class _FindPictureCardWidget extends State<FindPictureCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
//      decoration: BoxDecoration(color: Colors.blue),
      child: Image.asset("images/find_picture_card_back_green.png",fit: BoxFit.fill,),
    );
  }
}
