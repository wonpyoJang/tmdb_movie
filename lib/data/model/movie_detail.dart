import 'package:athenaslab_test/data/model/genre.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detail.g.dart';

@JsonSerializable()
class MovieDetail {
  static String imageBase = "https://image.tmdb.org/t/p/w500/";

  String get backdropImage => imageBase + backdropPath;

  String get posterImage => imageBase + posterPath;

  @JsonKey(name: "adult")
  final bool adult;

  @JsonKey(name: "backdrop_path")
  final String backdropPath;

  @JsonKey(name: "budget")
  final int budget;

  @JsonKey(name: "genres")
  final List<Genre> genres;

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "original_title")
  final String originalTitle;

  @JsonKey(name: "overview")
  final String overview;

  @JsonKey(name: "poster_path")
  final String posterPath;

  @JsonKey(name: "release_date")
  final String releaseDate;

  @JsonKey(name: "title")
  final String title;

  @JsonKey(name: "video")
  final bool video;

  @JsonKey(name: "vote_average")
  final double voteAverage;

  @JsonKey(name: "vote_count")
  final int voteCount;

  MovieDetail(
      this.adult,
      this.backdropPath,
      this.budget,
      this.genres,
      this.id,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);
}
