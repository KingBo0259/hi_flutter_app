import 'package:flutter/material.dart';
import '../pages/platform_view.dart';
import '../pages/Course/one_more_page.dart';
import 'package:hi_flutter_app/src/pages/Course/find_picture_template/find_picture_template_page.dart';
import '../pages/Course/write/hand_write_page.dart';

class Router {
  //全局路由管理， 由于设置了 home ，我们这里不能设置 "/" 默认路由
  static Map<String, WidgetBuilder> get routers => <String, WidgetBuilder>{
    "platform_view": (_) => PlatformView(),
    "oneMore":(_) => OneMorePage(),
    "FindPictureTemplatePage":(_) => FindPictureTemplatePage(),
    "HandWritePage": (_)=> HandWritePage()
  };
}


