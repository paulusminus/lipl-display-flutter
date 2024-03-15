import 'dart:io';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lipl_display/lipl_display.dart';
import 'package:lipl_display/message.dart';
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
      ? await Process.start("delay-line", ["3", "lipl-gatt-input.txt"])
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

class ShowError extends StatelessWidget {
  const ShowError({super.key, required this.error});
  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Error: ${error ?? "unknown"}')),
    );
  }
}

class ShowMessage extends StatelessWidget {
  const ShowMessage({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('No more data'),
      ),
    );
  }
}

class ShowData extends StatelessWidget {
  const ShowData({super.key, required this.liplDisplay});
  final LiplDisplay liplDisplay;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = min(size.width, size.height) * 0.05;

    return Scaffold(
      backgroundColor: liplDisplay.dark ? Colors.black : Colors.white,
      body: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                liplDisplay.text,
                style: TextStyle(
                  height: 1.2,
                  fontSize: liplDisplay.fontSize,
                  color: liplDisplay.dark ? Colors.white : Colors.black,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: liplDisplay.fontSize),
                  child: Text(
                    liplDisplay.status,
                    style: TextStyle(
                      fontSize: liplDisplay.fontSize * 0.7,
                      color: liplDisplay.dark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DisplayApp extends StatelessWidget {
  const DisplayApp({super.key, required this.messages, required this.log});
  final Stream<LiplDisplay> messages;
  final Logger log;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lipl Display',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: StreamBuilder<LiplDisplay>(
        stream: messages,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ShowError(error: snapshot.error);
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return const ShowMessage(message: 'No More Data');
              case ConnectionState.active:
                return ShowData(liplDisplay: snapshot.data!);
              case ConnectionState.none:
                return const ShowMessage(
                  message: 'None',
                );
              case ConnectionState.waiting:
                return const ShowMessage(
                  message: 'Waiting',
                );
            }
          }
        },
      ),
    );
  }
}
