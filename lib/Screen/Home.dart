import 'package:flutter/material.dart';

import '../Components/AdsView.dart';
import '../Constant/AppTitle.dart';
import '../Constant/SizeConfig.dart';
import '../Constant/bottomBar.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<Map> products = [
    {"name": "Acer", "price": 999, "image": "assets/png/laptop.png"},
    {"name": "Hp", "price": 550, "image": "assets/png/laptop2.png"},
    {"name": "Asus", "price": 880, "image": "assets/png/laptop3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTitle("Home", context),
                  AdsView(),
                  SizedBox(
                    height: getHeightScreen(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MiddleAppBar("Categories", Icons.list_sharp),
                      MiddleAppBar("Favorite", Icons.star_border_outlined),
                      MiddleAppBar("Gifts", Icons.card_giftcard_outlined),
                      MiddleAppBar("Best selling", Icons.trending_up_outlined),
                    ],
                  ),
                  SizedBox(
                    height: getHeightScreen(20),
                  ),
                  Container(
                    height: getHeightScreen(250),
                    width: SizeOfConfig.widthScreen,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: PageView(
                      children: products
                          .map(
                            (Map p) => ScrollProduct(
                                p['name'], p['image'], p['price'], context),
                          )
                          .toList(),
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

  GestureDetector ScrollProduct(
      String name, String image, int price, BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Banner(
        message: "\$ " + price.toString(),
        location: BannerLocation.topEnd,
        color: Colors.blue,
        child: Container(
          width: SizeOfConfig.widthScreen,
          child: Column(
            children: [
              Image.asset(
                image,
                height: getHeightScreen(220),
                // width: getWidthScreen(250),
                fit: BoxFit.contain,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MiddleAppBar(String title, IconData icon) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
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
}
