import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/widgets/underline_title.dart';

class BYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var rand = new Random();
    List<int> index = [rand.nextInt(100), rand.nextInt(100), rand.nextInt(100)];
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 20.px),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            buildTitle(),
            SizedBox(
              height: 20.px,
            ),
            buildLiveList(index)
          ],
        ));
  }

  // 1.标题
  Widget buildTitle() {
    return Row(
      children: <Widget>[
        buildMainTitle('热门'),
        SizedBox(width: 5.px),
        buildSubTitle('视频'),
        SizedBox(width: 5.px),
        buildSubTitle('音乐'),
        SizedBox(width: 5.px),
        buildSubTitle('话题')
      ],
    );
  }

  //  1.1主标题
  Widget buildMainTitle(String title) {
    return BYUnderLineTitle(title);
  }

  //  1.2副标题
  Widget buildSubTitle(String title) {
    return Text(
      title,
      style: TextStyle(color: Color(0xFFa9a9b0), fontSize: 12.px),
    );
  }

  //2.图片
  Widget buildLiveList(List<int> index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildLiveItem(index[0]),
        buildLiveItem(index[1]),
        buildLiveItem(index[2]),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black38,
        )
      ],
    );
  }

  //  2.1 图片item
  Widget buildLiveItem(int index) {
    return Stack(
      children: <Widget>[
        Positioned(
            child: Container(
          width: 100.px,
          height: 160.px,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.px),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://picsum.photos/200/300?random=$index'),
                  fit: BoxFit.fitWidth)),
        )),
        Positioned(
            bottom: 10.px,
            left: 10.px,
            child: Icon(
              Icons.play_circle_outline,
              color: Colors.white,
            ))
      ],
    );
  }
}
