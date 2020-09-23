import 'package:flutter/material.dart';

class BYShopScreen extends StatelessWidget {
  static const String routeName = '/shop';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
        centerTitle: true,
      ),
      body: Center(child: Text('购物车')),
    );
  }
}
