import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home/home_banner.dart';
import 'package:flutter_demo/pages/home/home_content.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/pages/home/home_news.dart';

class BYHomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('蜂鸟红人网'),
        centerTitle: true,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          BYHomeBanner(),
          BYHomeContent(),
          BYHomeContent(),
          BYHomeContent(),
          BYHomeNews(),
        ],
      ),
    );
  }
}
