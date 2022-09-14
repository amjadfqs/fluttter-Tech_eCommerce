import 'package:flutter/material.dart';
import 'package:lab_2/Constant/SizeConfig.dart';

class AdsView extends StatelessWidget {
  const AdsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: Banner(
          message: "New",
          location: BannerLocation.topEnd,
          color: Colors.red,
          child: Container(
            height: getHeightScreen(150),
            width: SizeOfConfig.widthScreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // transform: Matrix4.translationValues(0, -20, 0),
                  height: getHeightScreen(150),
                  width: getWidthScreen(130),
                  child: Image.asset(
                    "assets/png/product.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: getWidthScreen(10),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apple",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "1999\$",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
