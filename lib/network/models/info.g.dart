// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    aboutUs: json['aboutUs'] as String,
    policyTerm: json['policyTerm'] as String,
    privacy: json['privacy'] as String,
    emails: (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
    phone: (json['phone'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'aboutUs': instance.aboutUs,
      'policyTerm': instance.policyTerm,
      'privacy': instance.privacy,
      'emails': instance.emails,
      'phone': instance.phone,
    };
