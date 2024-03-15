import 'dart:convert';
import 'dart:io';

Stream<String> inputFromFile(String? filename) =>
    (filename == null ? stdin : File(filename).openRead())
        .transform(const Utf8Decoder())
        .transform(const LineSplitter());
