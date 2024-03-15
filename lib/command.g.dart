// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GattMessageCommandImpl _$$GattMessageCommandImplFromJson(
        Map<String, dynamic> json) =>
    _$GattMessageCommandImpl(
      command: $enumDecode(_$CommandEnumMap, json['command']),
    );

Map<String, dynamic> _$$GattMessageCommandImplToJson(
        _$GattMessageCommandImpl instance) =>
    <String, dynamic>{
      'command': _$CommandEnumMap[instance.command]!,
    };

const _$CommandEnumMap = {
  Command.increase: 'Increase',
  Command.decrease: 'Decrease',
  Command.dark: 'Dark',
  Command.light: 'Light',
  Command.exit: 'Exit',
  Command.poweroff: 'Poweroff',
  Command.wait: 'Wait',
};
