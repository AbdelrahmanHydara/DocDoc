import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  UserData? data;
  bool? status;
  int? code;

  LoginResponse({this.message,this.data,this.status,this.code});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

}

@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.username,this.token});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}