import 'package:flutter/material.dart';
import 'package:netflix/components/top_bar.dart';
import 'package:netflix/model/model_movie.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Movie> movies = [
    Movie.fromMap({
      "title": "사랑의 불시착",
      "keyword": "사랑/로맨스/판타지",
      "poster": "test_movie_1.png",
      "like": false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}
