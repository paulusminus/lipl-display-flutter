import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lipl_display/message.dart';

part 'command.freezed.dart';
part 'command.g.dart';

enum Command {
  @JsonValue("Increase")
  increase,
  @JsonValue("Decrease")
  decrease,
  @JsonValue("Dark")
  dark,
  @JsonValue("Light")
  light,
  @JsonValue("Exit")
  exit,
  @JsonValue("Poweroff")
  poweroff,
  @JsonValue("Wait")
  wait,
}

@freezed
class GattMessageCommand with _$GattMessageCommand implements GattMessage {
  const factory GattMessageCommand({required Command command}) =
      _GattMessageCommand;

  factory GattMessageCommand.fromJson(Map<String, dynamic> json) =>
      _$GattMessageCommandFromJson(json);
}
