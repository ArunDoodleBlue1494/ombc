import 'package:ombc/model/response/user_info.dart';
import 'package:json_annotation/json_annotation.dart';
import '../base_response.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse
{

  @JsonKey(name: "data")
  UserInfo? userInfo;
  @JsonKey(name: "token")
  String? token;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  LoginResponse();

}