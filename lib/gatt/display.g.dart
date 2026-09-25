// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LiplDisplay _$LiplDisplayFromJson(Map<String, dynamic> json) => _LiplDisplay(
  text: json['text'] as String,
  status: json['status'] as String,
  dark: json['dark'] as bool,
  fontSize: (json['fontSize'] as num).toDouble(),
);

Map<String, dynamic> _$LiplDisplayToJson(_LiplDisplay instance) =>
    <String, dynamic>{
      'text': instance.text,
      'status': instance.status,
      'dark': instance.dark,
      'fontSize': instance.fontSize,
    };
