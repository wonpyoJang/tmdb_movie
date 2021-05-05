import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {

  @JsonKey(name: "adult")
  final bool adult;

  @JsonKey(name: "backdrop_path")
  final String backdropPath;

  @JsonKey(name: "genre_ids")
  final List<int> genreIds;

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
  final bool voteAverage;

  @JsonKey(name: "vote_count")
  final bool voteCount;


  Movie(this.adult, this.backdropPath, this.genreIds, this.id, this.originalTitle, this.overview, this.posterPath, this.releaseDate, this.title, this.video, this.voteAverage, this.voteCount);

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
