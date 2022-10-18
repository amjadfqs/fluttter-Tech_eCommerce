import 'package:flutter/material.dart';

class Mesg {
  static final mesagKey = GlobalKey<ScaffoldMessengerState>();

  static showSnakeBar(String? text) {
    if (text == null) return;
    final snakBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
      duration: Duration(
        seconds: 2,
      ),
    );

    mesagKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snakBar);
  }
}
