import 'package:flutter/material.dart';

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
