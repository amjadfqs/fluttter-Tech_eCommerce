import 'package:flutter/material.dart';

import 'Constant.dart';
import 'SizeConfig.dart';

Widget AppTitle(String title, BuildContext context) {
  SizeOfConfig().init(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: getHeightScreen(15)),
      GestureDetector(
        child: const Icon(Icons.arrow_back_ios_new),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      SizedBox(height: getHeightScreen(25)),
      Text(
        title,
        style: priText,
      ),
      SizedBox(height: getHeightScreen(20)),
    ],
  );
}
