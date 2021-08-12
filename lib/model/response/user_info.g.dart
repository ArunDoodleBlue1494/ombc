// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo()
    ..userType = json['user_type'] as int
    ..id = json['_id'] as String
    ..email = json['email'] as String
    ..name = json['name'] as String
    ..mobileNumber = json['mobile_number'] as int
    ..employeeType = json['employee_type'] as String
    ..createdAt = json['createdAt'] as String;
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'user_type': instance.userType,
      '_id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'mobile_number': instance.mobileNumber,
      'employee_type': instance.employeeType,
      'createdAt': instance.createdAt,
    };
