import 'package:flutter/material.dart';

class GattError extends StatelessWidget {
  const GattError({super.key, required this.error});
  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Error: ${error ?? "unknown"}')),
    );
  }
}
