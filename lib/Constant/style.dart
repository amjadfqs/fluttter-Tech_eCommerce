// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

const dynamic dark100 = Color(0xff0F1723);
const dynamic dark50 = Color(0xff222831);
const dynamic blue = Color(0xff00ADB5);
const Color orange = Color(0xffFF5722);
const dynamic white = Color(0xffeeeeee);

TextStyle title_bold({color = white}) {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

const TextStyle title_white_bold = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: white,
);

TextStyle normal_bold({color = white}) => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: color,
    );

const TextStyle normal_white_bold = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: white,
);
