import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/pages/live/live_banner.dart';

class BYLiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          centerTitle: true,
          expandedHeight: 300.px,
          floating: true,
          pinned: true,
          snap: false,
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Container(
              width: double.infinity,
              height: 10.px,
              color: Colors.orange,
              child: BYLiveBanner(),
            ),
          ),
          bottom: PreferredSize(
              child: Container(
                height: 100.px,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.px),
                        topRight: Radius.circular(15.px))),
              ),
              preferredSize: Size.fromHeight(100.px)),
        ),
        new SliverFixedExtentList(
          itemExtent: 50.px,
          delegate: new SliverChildBuilderDelegate(
            (context, index) => new ListTile(
              title: new Text("Item $index"),
            ),
            childCount: 30,
          ),
        ),
      ],
    );
  }
}
