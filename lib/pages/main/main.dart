import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/main/main_router_list.dart';
import 'package:flutter_demo/extension/int_extension.dart';

class BYMainScreen extends StatefulWidget {
  static const String routeName = '/';
  @override
  _BYMainScreenState createState() => _BYMainScreenState();
}

class _BYMainScreenState extends State<BYMainScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(index: _index, children: pages),
        floatingActionButton: buildMidBtn(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 8,
          color: Theme.of(context).primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildTapBarItem(Icons.extension, '蜂鸟', 0),
              buildTapBarItem(Icons.shop, '直播', 1),
              SizedBox(),
              buildTapBarItem(Icons.shopping_cart, '购物车', 2),
              buildTapBarItem(Icons.settings, '设置', 3),
            ],
          ),
        ));
  }

  // tabbar 子元素
  Widget buildTapBarItem(IconData icon, String title, int index) {
    Color active_color = Colors.white30;
    if (_index == index) {
      active_color = Colors.white;
    }
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.px, horizontal: 20.px),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: active_color,
                size: 20.px,
              ),
              Text(
                title,
                style: TextStyle(color: active_color, fontSize: 8.px),
              )
            ],
          ),
        ),
        onTap: () {
          setState(() {
            _index = index;
          });
        });
  }

  // 中间浮动btn
  Widget buildMidBtn() {
    return Container(
        width: 50.px,
        height: 50.px,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          onPressed: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SizedBox(
                height: 40.px,
                width: 40.px,
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).primaryColor,
                )),
          ),
        ));
  }
}
