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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
               Text("1、单独使用Lottie plugin 目前好像无法解决使用带有图片的json文件.\n2\需要我们自己去修改和扩展;\n 3.如果带有图片可以使用本地资源去解决") ,
            Container(
                width: 200,
                height: 200,
                child: LottieView.fromFile(
                    autoPlay: true,
                    loop: true,
                    onViewCreated: (vc) {},
                    filePath: "json/lottie/compare_weight_lighter_1.json")),
          ])),
    );
  }
}
