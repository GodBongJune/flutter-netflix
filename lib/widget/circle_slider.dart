import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

List<Widget> makeCircleImages(List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return results;
}
