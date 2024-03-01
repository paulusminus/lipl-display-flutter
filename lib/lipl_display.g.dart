// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lipl_display.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiplDisplayImpl _$$LiplDisplayImplFromJson(Map<String, dynamic> json) =>
    _$LiplDisplayImpl(
      text: json['text'] as String,
      status: json['status'] as String,
      dark: json['dark'] as bool,
      fontSize: (json['fontSize'] as num).toDouble(),
    );

Map<String, dynamic> _$$LiplDisplayImplToJson(_$LiplDisplayImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'status': instance.status,
      'dark': instance.dark,
      'fontSize': instance.fontSize,
    };
