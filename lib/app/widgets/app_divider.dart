import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  Color barColor;
  double height;

  AppDivider({this.height = 1, this.barColor = Colors.white, });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: height,
      color: barColor,
    );
  }
}
