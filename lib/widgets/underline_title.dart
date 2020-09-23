import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';

class BYUnderLineTitle extends StatelessWidget {
  final String title;
  BYUnderLineTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      /*  fit: StackFit.expand, */
      children: <Widget>[
        Positioned(
          child: Text(
            title,
            style: TextStyle(fontSize: 15.px, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: double.infinity,
            height: 5.px,
            color: Color(0xaa4050b5),
          ),
        )
      ],
    );
  }
}
