import 'package:athenaslab_test/data/model/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {

  @JsonKey(name: "page")
  final int page;

  @JsonKey(name: "results")
  final List<Movie> results;

  @JsonKey(name: "total_pages")
  final int totalPages;

  @JsonKey(name: "total_results")
  final int totalResults;

  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);

  MovieResponse(this.page, this.results, this.totalPages, this.totalResults);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
