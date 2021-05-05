import 'package:json_annotation/json_annotation.dart';

part 'cast.g.dart';

@JsonSerializable()
class Cast {

  static String? imageBase = "https://image.tmdb.org/t/p/w500/";

  String? get profileImage => (imageBase ?? "") + (profilePath ?? "");

  @JsonKey(name: "adult", nullable: true)
  final bool? adult;

  @JsonKey(name: "gender", nullable: true)
  final int? gender;

  @JsonKey(name: "id", nullable: true)
  final int? id;

  @JsonKey(name: "known_for_department", nullable: true)
  final String? knownForDepartment;

  @JsonKey(name: "name", nullable: true)
  final String? name;

  @JsonKey(name: "original_name", nullable: true)
  final String? originalName;

  @JsonKey(name: "popularity", nullable: true)
  final double? popularity;

  @JsonKey(name: "profile_path", nullable: true)
  final String? profilePath;

  @JsonKey(name: "cast_id", nullable: true)
  final int? castId;

  @JsonKey(name: "character", nullable: true)
  final String? character;

  @JsonKey(name: "credit_id", nullable: true)
  final String? creditId;

  @JsonKey(name: "order", nullable: true)
  final int? order;

  Cast(this.adult, this.gender, this.id, this.knownForDepartment, this.name, this.originalName, this.popularity, this.profilePath, this.castId, this.character, this.creditId, this.order);

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

  Map<String, dynamic> toJson() => _$CastToJson(this);
}
