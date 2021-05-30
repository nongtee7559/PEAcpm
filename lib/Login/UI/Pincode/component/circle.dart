import 'package:cpm/Ulility/constants.dart';
import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final bool filled;
  final double extraSize;

  Circle({
    Key key,
    this.filled = false,
    this.extraSize = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: extraSize),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: filled ? primaryColor : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
    );
  }
}
