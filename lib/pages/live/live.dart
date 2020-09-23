import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/pages/live/live_banner.dart';
import 'dart:math';
import 'package:flutter_demo/pages/live/live_content.dart';
import 'package:flutter_demo/pages/live/live_control_bar.dart';
import 'package:flutter_demo/pages/live/live_item.dart';

class BYLiveScreen extends StatelessWidget {
  static const String routeName = '/live';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('直播'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[buildBanner(), buildStickyBar(), buildList()],
      ),
    );
  }

  // 1.banner行
  Widget buildBanner() {
    return SliverToBoxAdapter(
      child: BYLiveBanner(),
    );
  }

  // 2.吸顶栏
  Widget buildStickyBar() {
    return SliverPersistentHeader(
      pinned: true, //是否固定在顶部
      floating: true,
      delegate: _SliverAppBarDelegate(
          minHeight: 50.px, //收起的高度
          maxHeight: 50.px, //展开的最大高度
          child: BYLiveControlBar()),
    );
  }

  // 3.列表
  Widget buildList() {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        return BYLiveItem(index);
      },
      childCount: 40,
    ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
