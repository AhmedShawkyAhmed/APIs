import 'package:json_annotation/json_annotation.dart';
import 'package:api_test/network/models/info.dart';
part 'get_info_response.g.dart';

@JsonSerializable()
class GetInfoResponse {
  int status;
  Info info;

  GetInfoResponse({required this.status, required this.info});

  factory GetInfoResponse.fromJson(Map<String, dynamic> json) => _$GetInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetInfoResponseToJson(this);
}