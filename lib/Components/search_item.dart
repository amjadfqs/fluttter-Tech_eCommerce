// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/Constant/style.dart';

Widget search_item(BuildContext context,
    {String title = '', String subtitle = ''}) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: SizeOfConfig.widthScreen,
        padding: EdgeInsets.symmetric(
            horizontal: getWidthScreen(10), vertical: getHeightScreen(15)),
        child: Row(
          children: [
            Image.asset(
              'assets/png/laptop.png',
              width: getWidthScreen(40),
              fit: BoxFit.cover,
            ),
            SizedBox(width: getWidthScreen(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: title_bold(color: dark100),
                ),
                SizedBox(height: getHeightScreen(5)),
                Text(
                  subtitle,
                  style: normal_bold(color: dark100),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: getHeightScreen(20)),
    ],
  );
}
