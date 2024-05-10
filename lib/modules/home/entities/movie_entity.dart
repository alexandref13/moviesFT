abstract class MovieEntity {
  final int id;
  final String overview;
  final String posterPath;
  final String title;

  MovieEntity({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.title,
  });
}
