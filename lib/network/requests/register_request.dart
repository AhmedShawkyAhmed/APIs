import 'package:json_annotation/json_annotation.dart';
part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  String name;
  String phone;
  String password;
  String email;

  RegisterRequest({required this.name, required this.phone, required this.password,required this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> json) => _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}