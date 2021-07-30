import 'package:json_annotation/json_annotation.dart';
import 'user.dart';

part 'account.g.dart';

@JsonSerializable()
class AccountModel {
  int id;
  String apiToken;
  String phone;
  String message;
  User user;

  AccountModel({required this.apiToken,required this.id, required this.phone,required this.message,required this.user});

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
