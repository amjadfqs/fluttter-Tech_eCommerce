// ignore_for_file: non_constant_identifier_names, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/Constant/style.dart';

Widget text_input(
  BuildContext context,
  String holder, {
  bool passwd = false,
  IconData? icon,
  IconButton? iconButton,
  TextInputType? keyboardType,
  String? Function(String?)? validator,
  Function()? press,
  Function(String)? onChanged,
}) {
  SizeOfConfig().init(context);

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: TextFormField(
      onTap: press,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 18, color: dark100),
      obscureText: passwd,
      decoration: InputDecoration(
        focusColor: Colors.grey[300],
        border: InputBorder.none,
        hintText: holder,
        hintStyle: TextStyle(color: dark100),
        prefixIcon: Icon(
          icon,
          color: dark100,
        ),
        prefixIconColor: dark100,
        suffixIcon: iconButton,
      ),
    ),
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
