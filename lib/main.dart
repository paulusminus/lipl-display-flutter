import 'dart:io';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lipl_display/lipl_display.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
  final log = Logger('lipl_display');

  final gatt = await Process.start("lipl-gatt-bluer-cli", []);
  final messages = gatt.stdout
      .transform(const Utf8Decoder())
      .transform(const LineSplitter())
      .map(jsonDecode)
      .map((json) => LiplDisplay.fromJson(json))
      .asBroadcastStream();

  messages.listen(log.info,
      onDone: () => {
            Future.delayed(const Duration(seconds: 1))
                .then((value) => SystemNavigator.pop())
          });

  runApp(
    DisplayApp(messages: messages, log: log),
  );
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
          final size = MediaQuery.of(context).size;
          final padding = min(size.width, size.height) * 0.05;

          if (snapshot.connectionState == ConnectionState.done) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Scaffold(
            backgroundColor:
                snapshot.data?.dark ?? false ? Colors.black : Colors.white,
            body: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      snapshot.data?.text ?? '',
                      style: TextStyle(
                        height: 1.2,
                        fontSize: snapshot.data?.fontSize,
                        color: snapshot.data?.dark ?? false
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: snapshot.data?.fontSize ?? 8.0),
                        child: Text(
                          snapshot.data?.status ?? '',
                          style: TextStyle(
                            fontSize: snapshot.data == null
                                ? null
                                : snapshot.data!.fontSize * 0.7,
                            color: snapshot.data?.dark ?? false
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
