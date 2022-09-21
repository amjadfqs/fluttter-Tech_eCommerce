import 'package:flutter/material.dart';
import './Constant.dart';
import './SizeConfig.dart';

Widget DefaultButton(String text, Function() press) {
  return Container(
    width: SizeOfConfig.widthScreen - 60,
    height: 45,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 63, 106, 193),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextButton(
      onPressed: press,
      child: Text(
        text,
        style: priBtnText,
      ),
    ),
  );
}
