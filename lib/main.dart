import 'package:flutter/material.dart';
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
    DisplayApp(
      messages: messages,
    ),
  );
}

class DisplayApp extends StatelessWidget {
  const DisplayApp({Key? key, required this.messages}) : super(key: key);
  final Stream<LiplDisplay> messages;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lipl Display',
      home: StreamBuilder<LiplDisplay>(
        stream: messages,
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor:
                snapshot.data?.darkMode ?? false ? Colors.black : Colors.white,
            body: Column(
              children: [
                Expanded(
                  child: Center(
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(snapshot.data?.fontSize ?? 8.0),
                      child: Text(
                        snapshot.data?.status ?? '',
                        style: TextStyle(
                          fontSize: snapshot.data?.fontSize,
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
          );
        },
      ),
    );
  }
}
