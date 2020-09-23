import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/widgets/search_bar.dart';

class BYHomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        height: 240.px,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.px),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildIcon(),
              SizedBox(
                height: 10.px,
              ),
              buildSlogan(context),
              SizedBox(
                height: 30.px,
              ),
              BYSearchBar(Color(0x33ffffff), Color(0xffffffff)),
              SizedBox(
                height: 30.px,
              ),
              Divider(
                height: 1.px,
                color: Colors.white60,
              ),
              SizedBox(
                height: 15.px,
              ),
              buildIconGroup()
            ],
          ),
        ));
  }

  Widget buildIcon() {
    return Container(
      width: 100.px,
      height: 30.px,
      child: Image.asset('images/img/icon.png'),
    );
  }

  Widget buildSlogan(context) {
    return Text(
      '实时追踪直播带货,发掘热门素材,爆款商品及优秀账号',
      style: Theme.of(context)
          .textTheme
          .headline1
          .copyWith(color: Color(0xffeae8e7)),
    );
  }

  Widget buildIconGroup() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildIconItem(Icons.people, '涨粉榜'),
          buildIconItem(Icons.people, '涨粉榜'),
          buildIconItem(Icons.people, '涨粉榜'),
          buildIconItem(Icons.people, '涨粉榜')
        ]);
  }

  Widget buildIconItem(IconData icon, String title) {
    return Column(children: <Widget>[
      Container(
        width: 30.px,
        height: 30.px,
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(30.px)),
        child: Icon(icon),
      ),
      SizedBox(height: 5.px),
      Text(title, style: TextStyle(color: Colors.white))
    ]);
  }
}
