import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lipl_display/gatt/message.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class GattMessageStatus with _$GattMessageStatus implements GattMessage {
  const factory GattMessageStatus({required String status}) =
      _GattMessageStatus;

  factory GattMessageStatus.fromJson(Map<String, dynamic> json) =>
      _$GattMessageStatusFromJson(json);
}
