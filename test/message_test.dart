import 'dart:convert';

import 'package:lipl_display/command.dart';
import 'package:lipl_display/input.dart';
import 'package:lipl_display/lipl_display.dart';
import 'package:lipl_display/message.dart';
import 'package:lipl_display/status.dart';
import 'package:lipl_display/part.dart';
import 'package:rxdart/transformers.dart';
import 'package:test/test.dart';

void main() {
  group('Message', () {
    group('part', () {
      test('to json', () {
        const command = GattMessagePart(part: 'Hallo');
        expect(
          jsonEncode(command),
          '{"part":"Hallo"}',
        );
      });

      test('from json', () {
        const s = '{"part":"Hallo"}';
        expect(
          convertToMessage(s),
          const GattMessagePart(part: 'Hallo'),
        );
      });
    });

    group('status', () {
      test('to json', () {
        const command = GattMessageStatus(status: 'Hallo');
        expect(
          jsonEncode(command),
          '{"status":"Hallo"}',
        );
      });

      test('from json', () {
        const s = '{"status":"Hallo"}';
        expect(
          convertToMessage(s),
          const GattMessageStatus(status: 'Hallo'),
        );
      });
    });

    group('command', () {
      test('to json', () {
        const command = GattMessageCommand(command: Command.dark);
        expect(
          jsonEncode(command),
          '{"command":"Dark"}',
        );
      });

      test('from json', () {
        const s = '{"command":"Light"}';
        expect(
          convertToMessage(s),
          const GattMessageCommand(command: Command.light),
        );
      });
    });
  });

  group('Screen', () {
    test('construction', () {
      const display =
          LiplDisplay(text: 'Hallo', status: '', dark: true, fontSize: 30.0);
      expect(display.dark, true);
      expect(display.text, 'Hallo');
      expect(display.status, '');
      expect(display.fontSize, 30.0);
    });

    test('changes', () async {
      final changes = Stream.fromIterable([
        const GattMessageCommand(command: Command.light),
        const GattMessageCommand(command: Command.light),
        const GattMessageStatus(status: 'Er is een kindeke geboren (1/5)'),
        const GattMessagePart(
            part:
                "Er is een kindeke geboren op d'daar\n't Kwam op de aarde voor ons allegaar"),
        const GattMessageCommand(command: Command.increase),
      ]);

      final display = await changes.distinct().fold(
            LiplDisplay.init(),
            (display, gattMessage) => display.handleMessage(gattMessage),
          );

      expect(
        display.fontSize,
        33.0,
      );
      expect(
        display.text,
        "Er is een kindeke geboren op d'daar\n't Kwam op de aarde voor ons allegaar",
      );
      expect(
        display.dark,
        false,
      );
      expect(
        display.status,
        'Er is een kindeke geboren (1/5)',
      );
    });
  });

  group('Input', () {
    test('from file', () async {
      final screenStream = inputFromFile('lipl-gatt-input.txt')
          .map(convertToMessage)
          .distinct()
          .transform(
            ScanStreamTransformer(
                (liplDisplay, message, index) =>
                    liplDisplay.handleMessage(message),
                LiplDisplay.init()),
          );

      final last = await screenStream.last;
      expect(last.dark, true);
    });
  });
}
