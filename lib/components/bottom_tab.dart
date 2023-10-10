import 'package:flutter/material.dart';

class BottomTab extends StatelessWidget {
  final String text;
  final IconData iconData;

  BottomTab(this.text, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(iconData, size: 18),
      child: Text("$text", style: TextStyle(fontSize: 9)),
    );
  }
}
