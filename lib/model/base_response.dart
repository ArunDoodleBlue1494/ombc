import 'package:ombc/base/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';
@JsonSerializable()
class BaseResponse extends BaseModel
{
  @JsonKey(name: "success")
  bool? success;
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);

  BaseResponse();
}