import 'package:flutter/material.dart';
import '../pages/platform_view.dart';

class Router {
  //全局路由管理， 由于设置了 home ，我们这里不能设置 "/" 默认路由
  static Map<String, WidgetBuilder> get routers => <String, WidgetBuilder>{
    "platform_view": (_) => PlatformView(),

  };
}


