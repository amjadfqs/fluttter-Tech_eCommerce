import 'package:flutter/material.dart';

Widget MyInkWell(String title, Function() onTap) {
  return InkWell(
    child: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    onTap: onTap,
  );
}
