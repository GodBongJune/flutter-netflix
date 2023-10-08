import 'package:flutter/material.dart';
import 'package:netflix/components/bottom_bar.dart';
import 'package:netflix/pages/home_tab.dart';
import 'package:netflix/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BongFlix",
      theme: theme(),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeTab(),
              Container(child: Center(child: Text("Search"))),
              Container(child: Center(child: Text("Save"))),
              Container(child: Center(child: Text("List"))),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
