import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lipl_display/gatt/gatt.dart';
import 'package:lipl_display/ui/ui.dart';
import 'package:logging/logging.dart';
import 'package:rxdart/rxdart.dart';

const int defaultFontsize = 30;
const bool defaultDark = true;

void main() async {
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
  final log = Logger('lipl_display');

  final gatt = const String.fromEnvironment("IS_TEST") == "true"
      ? await Process.start("delay-line", ["3", "lipl-gatt-input.txt", "-w"])
      : await Process.start("lipl-gatt-bluer-cli", []);
  final messages = gatt.stdout
      .transform(const Utf8Decoder())
      .transform(const LineSplitter())
      .map(convertToMessage)
      .transform(
        ScanStreamTransformer(
          (display, message, count) => display.handleMessage(message),
          LiplDisplay.init(),
        ),
      )
      .distinct();

  runApp(
    DisplayApp(messages: messages, log: log),
  );
}
