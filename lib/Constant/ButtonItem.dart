import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './SizeConfig.dart';

Widget buttonItem(
  String imagepath,
  String buttonName,
  double size,
  Function() onTap,
  BuildContext context,
) {
  SizeOfConfig().init(context);

  return InkWell(
    onTap: onTap,
    child: Container(
      width: SizeOfConfig.widthScreen - 60,
      height: 50,
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 63, 106, 193),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                imagepath,
                width: getWidthScreen(size),
                height: getHeightScreen(size),
              ),
            ),
            // SizedBox(
            //   width: 15,
            // ),
            Expanded(
              flex: 2,
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
