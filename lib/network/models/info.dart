import 'package:json_annotation/json_annotation.dart';
part 'info.g.dart';

@JsonSerializable()
class Info {
  String aboutUs;
  String policyTerm;
  String privacy;
  List<String> emails;
  List<String> phone;

  Info({required this.aboutUs,required this.policyTerm,required this.privacy,required this.emails,required this.phone});

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}