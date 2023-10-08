import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/bbongflix_logo.png",
              fit: BoxFit.contain,
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text("TV프로그램", style: TextStyle(fontSize: 14)),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text("영화", style: TextStyle(fontSize: 14)),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Text("내가 찜한 콘텐츠", style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
