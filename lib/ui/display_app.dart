import 'package:flutter/material.dart';
import 'package:lipl_display/gatt/gatt.dart';
import 'package:lipl_display/ui/ui.dart';
import 'package:logging/logging.dart';

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
            return GattError(error: snapshot.error);
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
