import 'package:json_annotation/json_annotation.dart';
part 'LoginRequest.g.dart';

@JsonSerializable()
class LoginRequest {
  String phone;
  String password;

  LoginRequest({required this.phone, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
