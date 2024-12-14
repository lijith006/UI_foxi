// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberResponse _$NumberResponseFromJson(Map<String, dynamic> json) =>
    NumberResponse(
      text: json['text'] as String?,
      number: (json['number'] as num?)?.toInt(),
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberResponseToJson(NumberResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
