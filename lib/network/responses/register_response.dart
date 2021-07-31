import 'package:json_annotation/json_annotation.dart';
import 'package:api_test/network/models/account.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  int status;
  String message;
  AccountModel account;

  RegisterResponse({required this.status, required this.account, required this.message});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}