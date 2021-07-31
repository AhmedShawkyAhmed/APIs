// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoResponse _$GetInfoResponseFromJson(Map<String, dynamic> json) {
  return GetInfoResponse(
    status: json['status'] as int,
    info: Info.fromJson(json['info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetInfoResponseToJson(GetInfoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
    };
