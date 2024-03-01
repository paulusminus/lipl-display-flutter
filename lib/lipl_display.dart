import 'package:freezed_annotation/freezed_annotation.dart';

part 'lipl_display.freezed.dart';
part 'lipl_display.g.dart';

@freezed
class LiplDisplay with _$LiplDisplay {
  const factory LiplDisplay({
    required String text,
    required String status,
    required bool dark,
    required double fontSize,
  }) = _LiplDisplay;

  factory LiplDisplay.fromJson(Map<String, dynamic> json) =>
      _$LiplDisplayFromJson(json);
}
