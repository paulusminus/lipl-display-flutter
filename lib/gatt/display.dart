import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lipl_display/gatt/command.dart';
import 'package:lipl_display/gatt/message.dart';
import 'package:lipl_display/gatt/part.dart';
import 'package:lipl_display/gatt/status.dart';

part 'display.freezed.dart';
part 'display.g.dart';

@freezed
class LiplDisplay with _$LiplDisplay {
  const LiplDisplay._();

  const factory LiplDisplay({
    required String text,
    required String status,
    required bool dark,
    required double fontSize,
  }) = _LiplDisplay;

  factory LiplDisplay.init() =>
      const LiplDisplay(text: '', status: '', dark: true, fontSize: 30.0);

  LiplDisplay handleMessage(GattMessage message) {
    switch (message) {
      case GattMessagePart(:var part):
        return copyWith(text: part);
      case GattMessageCommand(:var command):
        switch (command) {
          case Command.dark:
            return copyWith(dark: true);
          case Command.light:
            return copyWith(dark: false);
          case Command.increase:
            return copyWith(fontSize: fontSize + 3.0);
          case Command.decrease:
            return (fontSize < 6.0)
                ? copyWith()
                : copyWith(fontSize: fontSize - 3.0);
          default:
            return copyWith();
        }
      case GattMessageStatus(:var status):
        return copyWith(status: status);
      default:
        return this;
    }
  }

  factory LiplDisplay.fromJson(Map<String, dynamic> json) =>
      _$LiplDisplayFromJson(json);
}
