import 'package:flutter/material.dart';
import 'package:lab_2/Constant/AppTitle.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/Constant/bottomBar.dart';

class CategoriesCurrunt extends StatelessWidget {
  CategoriesCurrunt({super.key});

  final List<Map> products = [
    {"name": "Apple", "price": 100, "image": "assets/png/product.png"},
    {"name": "Samsung", "price": 50, "image": "assets/png/product.png"},
    {"name": "Microsoft", "price": 80, "image": "assets/png/product.png"},
    {"name": "Asus", "price": 120, "image": "assets/png/product.png"},
    {"name": "Acer", "price": 150, "image": "assets/png/product.png"},
    {"name": "Dell", "price": 200, "image": "assets/png/product.png"},
  ];

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
                  AppTitle("Laptop", context),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 8.0,
                      children: products
                          .map((Map product) => ProductView(product['name'],
                              product['image'], product['price'], context))
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

  Widget ProductView(
      String name, String image, int price, BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 3),
            Image.asset(
              image,
              height: getHeightScreen(100),
              width: getHeightScreen(220),
            ),
            SizedBox(height: 3),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\$ $price",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
