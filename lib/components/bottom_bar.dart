import 'package:flutter/material.dart';
import 'package:netflix/components/bottom_tab.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            BottomTab("Home", Icons.home),
            BottomTab("Searh", Icons.search),
            BottomTab("Save", Icons.save_alt),
            BottomTab("List", Icons.list),
          ],
        ),
      ),
    );
  }
}
