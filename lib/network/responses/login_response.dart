import 'package:json_annotation/json_annotation.dart';
import 'package:api_test/network/models/account.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  int status;
  String message;
  AccountModel account;

  LoginResponse({required this.status, required this.account, required this.message});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
