import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String password;
  final String name;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final String phone;
  final int gender;

  RegisterRequestBody({
    required this.name,
    required this.passwordConfirmation,
    required this.phone,
    required this.gender,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}