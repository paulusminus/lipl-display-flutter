import 'package:flutter/material.dart';
import 'package:lipl_display/gatt/gatt.dart';
import 'package:lipl_display/main.dart';
import 'package:lipl_display/ui/ui.dart';
import 'package:logging/logging.dart';

class DisplayApp extends StatelessWidget {
  const DisplayApp({
    super.key,
    required this.messages,
    required this.log,
  });
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
            return ShowData(
              liplDisplay: LiplDisplay.init().copyWith(
                status: '',
                text: 'Fout: ${snapshot.error}',
                dark: defaultDark,
              ),
            );
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                return ShowData(
                  liplDisplay: LiplDisplay.init().copyWith(
                    status: '',
                    text: 'Even geduld a.u.b. ...',
                    dark: defaultDark,
                  ),
                );
              case ConnectionState.active:
                return ShowData(liplDisplay: snapshot.data!);
              case ConnectionState.none:
                return ShowData(
                  liplDisplay: LiplDisplay.init().copyWith(
                      status: '',
                      text: 'Even geduld a.u.b. ...',
                      dark: defaultDark),
                );
              case ConnectionState.waiting:
                return ShowData(
                  liplDisplay: LiplDisplay.init().copyWith(
                      status: '',
                      text: 'Even geduld a.u.b.',
                      dark: defaultDark),
                );
            }
          }
        },
      ),
    );
  }
}
