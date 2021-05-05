import 'package:athenaslab_test/data/model/cast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cast_response.g.dart';

@JsonSerializable()
class CastResponse {

  @JsonKey(name: "id", nullable: true)
  final int? id;

  @JsonKey(name: "cast", nullable: true)
  final List<Cast>? cast;

  factory CastResponse.fromJson(Map<String, dynamic> json) => _$CastResponseFromJson(json);

  CastResponse(this.id, this.cast);

  Map<String, dynamic> toJson() => _$CastResponseToJson(this);
}
