// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab_2/Constant/SizeConfig.dart';

Widget MiddleAppBar(String title, IconData icon, Function() onTap) {
  return Column(
    children: [
      GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue[200],
          child: Icon(
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
            semanticLabel: title,
            icon,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(
        height: getHeightScreen(5),
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
