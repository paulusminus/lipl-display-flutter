import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lipl_display/message.dart';

part 'part.freezed.dart';
part 'part.g.dart';

@freezed
class GattMessagePart with _$GattMessagePart implements GattMessage {
  const factory GattMessagePart({required String part}) = _GattMessagePart;

  factory GattMessagePart.fromJson(Map<String, dynamic> json) =>
      _$GattMessagePartFromJson(json);
}
