import 'package:movies_flutter/core/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    required super.id,
    required super.overview,
    required super.posterPath,
    required super.title,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "overview": overview,
        "poster_path": posterPath,
        "title": title,
      };
}
