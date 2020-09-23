import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';

class BYLiveItem extends StatelessWidget {
  final int index;
  BYLiveItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.px, 10.px, 15.px, 0),
      padding: EdgeInsets.symmetric(horizontal: 15.px, vertical: 15.px),
      height: 100.px,
      color: Color(0xfff6f7fc),
      child: Row(
          /*  crossAxisAlignment: CrossAxisAlignment.center, */
          children: <Widget>[
            buildAvatar(index),
            SizedBox(
              width: 15.px,
            ),
            buildTitle(),
            buildIcon()
          ]),
    );
  }

  // 1.头像

  Widget buildAvatar(int index) {
    return Container(
      width: 70.px,
      height: 70.px,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.px),
          image: DecorationImage(
              image:
                  NetworkImage('https://picsum.photos/200/200?random=$index'))),
    );
  }

  Widget buildTitle() {
    return Expanded(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '海宁反季,嘉年华直播间等你来!!!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.px,
          ),
        ),
        SizedBox(
          height: 15.px,
        ),
        Text(
          '开播时间:09-18 19:40',
          style: TextStyle(fontSize: 10.px, color: Color(0xff999999)),
        )
      ],
    ));
  }

  Widget buildIcon() {
    return Icon(
      Icons.play_circle_filled,
      size: 25.px,
      color: Color(0xff4050b5),
    );
  }
}
