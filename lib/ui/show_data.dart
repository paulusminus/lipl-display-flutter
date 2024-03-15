import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lipl_display/gatt/gatt.dart';

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
