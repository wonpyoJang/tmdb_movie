import 'package:athenaslab_test/data/model/author_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

@JsonSerializable()
class Review {

  @JsonKey(name: "author")
  final String? author;

  @JsonKey(name: "author_details")
  final AuthorDetail? authorDetails;

  @JsonKey(name: "content")
  final String? content;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "original_title")
  final String? originalTitle;

  @JsonKey(name: "url")
  final String? url;

  Review(this.author, this.authorDetails, this.content, this.createdAt, this.originalTitle, this.url);

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
