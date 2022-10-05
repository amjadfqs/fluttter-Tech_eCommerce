// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab_2/Components/MiddleAppBar.dart';
import 'package:lab_2/Screen/searchPage.dart';

import './DetailPage.dart';
import '../Components/AdsView.dart';
import '../Constant/AppTitle.dart';
import '../Constant/SizeConfig.dart';
import '../Constant/bottomBar.dart';
import '../Constant/products.dart';
import 'CategoriesPage.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var buttonBaN = 0;
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
                      MiddleAppBar("Categories", Icons.list_sharp, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesPage()));
                      }),
                      MiddleAppBar(
                          "Favorite", Icons.star_border_outlined, () {}),
                      MiddleAppBar(
                          "Gifts", Icons.card_giftcard_outlined, () {}),
                      MiddleAppBar(
                          "Best selling", Icons.trending_up_outlined, () {}),
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
      bottomNavigationBar: BottomBar(
          BottomNu: buttonBaN,
          callBack: (int index) {
            buttonBaN = index;
            setState(() {
              if (buttonBaN == 0) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              } else if (buttonBaN == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              }
            });
          }),
    );
  }

  GestureDetector ScrollProduct(
      String name, String image, int price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              name: name,
              image: image,
              price: price,
            ),
          ),
        );
      },
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
}
