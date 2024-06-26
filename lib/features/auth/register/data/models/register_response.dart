import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? message;
  UserData? data;
  bool? status;
  int? code;

  RegisterResponse({this.message,this.data,this.status,this.code});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

}

@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.username,this.token});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}