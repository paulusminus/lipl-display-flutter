import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ffi.dart';

const String defaultPart = "Even geduld a.u.b.";
const double defaultFontsize = 30.0;
const double defaultFontsizeIncrement = 3.0;
const bool defaultDarkmode = false;

void main() {
  final messages = peripheral.gattListen(
    part: defaultPart,
    status: '',
    darkMode: defaultDarkmode,
    fontSize: defaultFontsize,
    fontSizeIncrement: defaultFontsizeIncrement,
  );

  runApp(
    DisplayApp(messages: messages),
  );
}

class DisplayApp extends StatelessWidget {
  const DisplayApp({Key? key, required this.messages}) : super(key: key);
  final Stream<LiplDisplay> messages;

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
            SystemNavigator.pop();
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Scaffold(
            backgroundColor:
                snapshot.data?.darkMode ?? false ? Colors.black : Colors.white,
            body: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      snapshot.data?.part ?? '',
                      style: TextStyle(
                        fontSize: snapshot.data?.fontSize,
                        color: snapshot.data?.darkMode ?? false
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
                                : snapshot.data!.fontSize * 0.8,
                            color: snapshot.data?.darkMode ?? false
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
