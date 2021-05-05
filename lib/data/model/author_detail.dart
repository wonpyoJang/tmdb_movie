import 'package:json_annotation/json_annotation.dart';

part 'author_detail.g.dart';

@JsonSerializable()
class AuthorDetail {
  static String imageBase = "https://image.tmdb.org/t/p/w500/";

  String get avatarImage => imageBase + (avatarPath ?? "");

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "username")
  final String? username;

  @JsonKey(name: "avatar_path")
  final String? avatarPath;

  @JsonKey(name: "rating")
  final double? rating;

  AuthorDetail(this.name, this.username, this.avatarPath, this.rating);

  factory AuthorDetail.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailToJson(this);
}
