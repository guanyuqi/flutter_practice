import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/widgets/search_bar.dart';

class BYLiveBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.px,
      padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 30.px),
      /* color: Color(0xfff5f6f7), */
      child: Column(
        children: <Widget>[
          BYSearchBar(Color(0xfff6f7fc), Color(0xff666666)),
          SizedBox(
            height: 20.px,
          ),
          buildIconBar()
        ],
      ),
    );
  }

  // 1.banner 图标栏
  Widget buildIconBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buildIconItem(Icons.query_builder, Color(0xff4b42f3), '直播榜'),
        buildIconItem(Icons.shopping_basket, Color(0xff3792a1), '带货榜'),
        buildIconItem(Icons.card_giftcard, Color(0xffff90d7), '商品榜'),
        buildIconItem(Icons.score, Color(0xff675ef6), '收入榜'),
      ],
    );
  }

  // 1.1 图标Item
  Widget buildIconItem(IconData icon, Color color, String title) {
    return Column(
      children: <Widget>[
        Container(
          width: 45.px,
          height: 45.px,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15.px)),
          child: Icon(
            icon,
            color: Colors.white,
            size: 24.px,
          ),
        ),
        SizedBox(
          height: 4.px,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black54, fontSize: 12.px),
        )
      ],
    );
  }
}
