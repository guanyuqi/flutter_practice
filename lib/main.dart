import 'package:flutter/material.dart';
import 'package:flutter_demo/router/router.dart';
import 'package:flutter_demo/shared/app_theme.dart';
import 'package:flutter_demo/shared/size_fit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BYSizeFit.initialize();
    return MaterialApp(
      title: '蜂鸟红人网',
      debugShowCheckedModeBanner: false,
      theme: BYAppTheme.norTheme,
      initialRoute: BYRouter.initialRoute,
      routes: BYRouter.routes,
      onGenerateRoute: BYRouter.generateRoute,
      onUnknownRoute: BYRouter.unknownRoute,
    );
  }
}
