import 'dart:convert';

import 'package:lipl_display/command.dart';
import 'package:lipl_display/status.dart';
import 'package:lipl_display/part.dart';

abstract class GattMessage {}

class DeserializeMessageException implements Exception {
  DeserializeMessageException({required this.jsonString});
  final String jsonString;
}

GattMessage convertToMessage(String jsonString) {
  final json = jsonDecode(jsonString) as Map<String, dynamic>;
  if (json["part"] != null) {
    return GattMessagePart.fromJson(json);
  } else if (json["status"] != null) {
    return GattMessageStatus.fromJson(json);
  } else if (json["command"] != null) {
    return GattMessageCommand.fromJson(json);
  } else {
    throw DeserializeMessageException(jsonString: jsonString);
  }
}
