import 'package:flutter/material.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/Constant/bottomBar.dart';

import '../Constant/AppTitle.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String image;
  final int price;

  const DetailPage(
      {required this.name, required this.image, required this.price});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

List mycolor = <Color>[
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.grey,
];

Color currentColor = mycolor[0];

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTitle(widget.name, context),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      currentColor,
                      BlendMode.modulate,
                    ),
                    child: Container(
                      height: getHeightScreen(300),
                      width: SizeOfConfig.widthScreen,
                      child: Image.asset(widget.image),
                    ),
                  ),
                  SizedBox(
                    height: getHeightScreen(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Colors ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < mycolor.length; i++)
                            CircleColor(mycolor[i]),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeightScreen(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.price.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeightScreen(40),
                  ),
                  // Add to cart button
                  Container(
                    height: getHeightScreen(50),
                    width: SizeOfConfig.widthScreen,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget CircleColor(Color mycolor) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 14.5,
            left: 13.5,
            child: Icon(
              Icons.check,
              size: 20,
              color:
                  currentColor == mycolor ? Colors.black : Colors.transparent,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.circle,
              color: mycolor.withOpacity(0.70),
              size: 30,
            ),
            onPressed: () {
              setState(() {
                currentColor = mycolor;
              });
            },
          ),
        ],
      ),
    );
  }
}
