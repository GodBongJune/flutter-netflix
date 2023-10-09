import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix/components/carousel_image.dart';
import 'package:netflix/components/top_bar.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/widget/circle_slider.dart';

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
      "poster": "assets/test_movie_1.png",
      "like": false
    }),
    Movie.fromMap({
      "title": "미스터 선샤인",
      "keyword": "사랑/로맨스",
      "poster": "assets/test_movie_2.png",
      "like": false
    }),
    Movie.fromMap({
      "title": "태양의 후예",
      "keyword": "사랑",
      "poster": "assets/test_movie_3.png",
      "like": false
    }),
    Movie.fromMap({
      "title": "스물다섯 스물하나",
      "keyword": "사랑/로맨스",
      "poster": "assets/test_movie_4.png",
      "like": false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies)
      ],
    );
  }
}

class CircleSlider extends StatelessWidget {
  late final List<Movie> movies;

  CircleSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("미리보기"),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(movies),
            ),
          ),
        ],
      ),
    );
  }
}
