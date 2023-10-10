import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/pages/detail_tab.dart';
import 'package:netflix/pages/home_tab.dart';

class BoxSlider extends StatelessWidget {
  late final List<Movie> movies;

  BoxSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("지금 뜨는 컨텐츠"),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DeatailScreen(
                  movie: movies[i],
                );
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(movies[i].poster),
          ),
        ),
      ),
    );
  }
  return results;
}
