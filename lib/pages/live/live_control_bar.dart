import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';

class BYLiveControlBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        //模糊
        filter: ImageFilter.blur(sigmaX: 18.px, sigmaY: 18.px),
        child: Container(
          height: 50.px,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.px),
                  topRight: Radius.circular(15.px))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildFilterBtn('全部分类', Icons.keyboard_arrow_down),
              buildFilterBtn('销售排序', Icons.keyboard_arrow_down),
              buildFilterBtn('筛选', Icons.euro_symbol)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFilterBtn(String text, IconData icon) {
    return SizedBox(
      height: 40.px,
      /* width: 100.px, */
      child: FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text(text),
              SizedBox(
                width: 5.px,
              ),
              Icon(
                icon,
                color: Color(0xff4a42f3),
              )
            ],
          )),
    );
  }
}
