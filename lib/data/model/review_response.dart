import 'package:athenaslab_test/data/model/review.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_response.g.dart';

@JsonSerializable()
class ReviewResponse {

  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "page")
  final int? page;

  @JsonKey(name: "results")
  final List<Review>? results;

  @JsonKey(name: "total_page")
  final int? totalPage;

  @JsonKey(name: "total_results")
  final int? totalResults;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) => _$ReviewResponseFromJson(json);

  ReviewResponse(this.id, this.page, this.results, this.totalPage, this.totalResults);

  Map<String, dynamic> toJson() => _$ReviewResponseToJson(this);
}
