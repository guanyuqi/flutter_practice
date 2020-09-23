import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';

class BYSearchBar extends StatelessWidget {
  final Color bgColor;
  final Color fontColor;
  BYSearchBar(this.bgColor, this.fontColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
              fillColor: bgColor,
              filled: true,
              labelText: '搜索抖音号',
              labelStyle: TextStyle(color: fontColor),
              prefixIcon: Icon(
                Icons.search,
                color: fontColor,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30.px),
              ))),
    );
  }
}
