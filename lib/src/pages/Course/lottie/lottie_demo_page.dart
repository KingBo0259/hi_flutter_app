import 'package:flutter/material.dart';
import 'package:flutter_lottie/flutter_lottie.dart';
import 'package:flutter/cupertino.dart';

class LottieDemoPage extends StatefulWidget {
  @override
  createState() => _LottieDemoPage();
}

class _LottieDemoPage extends State<LottieDemoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Lottie Demo"),
        ),
        child: Center(
          child: Container(
              width: 200,
              height: 200,
              child: LottieView.fromFile(
                  autoPlay: true,
                  loop: true,
                  onViewCreated: (vc) {},
                  filePath: "json/lottie/compare_weight_lighter_1.json")),
        ));
  }
}
