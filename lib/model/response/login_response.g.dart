// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse()
    ..status = json['status'] as int
    ..message = json['message'] as String
    ..userInfo = json['data'] == null
        ? null
        : UserInfo.fromJson(json['data'] as Map<String, dynamic>)
    ..token = json['token'] as String;
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.userInfo,
      'token': instance.token,
    };
