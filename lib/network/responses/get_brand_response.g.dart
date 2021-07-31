// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_brand_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBrandResponse _$GetBrandResponseFromJson(Map<String, dynamic> json) {
  return GetBrandResponse(
    status: json['status'] as int,
    brand: (json['brand'] as List<dynamic>)
        .map((e) => Brand.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$GetBrandResponseToJson(GetBrandResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'brand': instance.brand,
    };
