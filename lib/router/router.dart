import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home/home.dart';
import 'package:flutter_demo/pages/live/live.dart';
import 'package:flutter_demo/pages/main/main.dart';
import 'package:flutter_demo/pages/settings/settings.dart';
import 'package:flutter_demo/pages/shop/shop.dart';

class BYRouter {
  /* 默认路由 */
  static final String initialRoute = BYMainScreen.routeName;

  /* 路由表 */
  static final Map<String, WidgetBuilder> routes = {
    BYMainScreen.routeName: (ctx) => BYMainScreen(),
    BYHomeScreen.routeName: (ctx) => BYHomeScreen(),
    BYLiveScreen.routeName: (ctx) => BYLiveScreen(),
    BYShopScreen.routeName: (ctx) => BYShopScreen(),
    BYSettingsScreen.routeName: (ctx) => BYSettingsScreen(),
  };

  // 扩展
  static final RouteFactory generateRoute = (settings) {
    /* if (settings.name == FilterScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return FilterScreen();
          },
          fullscreenDialog: true);
    } */
    return null;
  };
  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
