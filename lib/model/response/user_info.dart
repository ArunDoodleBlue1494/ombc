import 'package:ombc/base/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';
@JsonSerializable()
class UserInfo extends BaseModel
{
  UserInfo();

  @JsonKey(name: "user_type")
  int? userType;
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "mobile_number")
  int? mobileNumber;
  @JsonKey(name: "employee_type")
  String? employeeType;
  @JsonKey(name: "createdAt")
  String? createdAt;
  @JsonKey(name: "v")
  int? v;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}