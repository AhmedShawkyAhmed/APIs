import 'package:json_annotation/json_annotation.dart';
import 'package:api_test/network/models/brand.dart';
part 'get_brand_response.g.dart';

@JsonSerializable()
class GetBrandResponse {
  int status;
  List<Brand> brand;

  GetBrandResponse({required this.status, required this.brand});

  factory GetBrandResponse.fromJson(Map<String, dynamic> json) => _$GetBrandResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetBrandResponseToJson(this);
}