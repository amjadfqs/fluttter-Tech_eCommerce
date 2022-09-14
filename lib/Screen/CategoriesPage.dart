import 'package:flutter/material.dart';
import 'package:lab_2/Constant/Constant.dart';
import 'package:lab_2/Constant/bottomBar.dart';

import '../Constant/AppTitle.dart';
import '../Constant/SizeConfig.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  final List<String> categories = [
    "All",
    "Computer",
    "TVs",
    "Air Condition",
    "Radio",
    "Fan",
    "Pc",
    "Chair",
    "Desktop",
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
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTitle("Categories", context),
                  Expanded(
                    child: ListView(
                      children: categories
                          .map((String cate) =>
                              buildGestureDetector(cate, context))
                          .toList(),
                      // buildGestureDetector("All", context),
                    ),
                  ),
                  // BottomBar()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget buildGestureDetector(String value, BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Text(
          value,
          style: catText,
        ),
      ),
    );
  }
}
