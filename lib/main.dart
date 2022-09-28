import 'package:flutter/material.dart';
import 'package:lab_2/Screen/CategoriesPage.dart';
import 'package:lab_2/Screen/DetailPage.dart';
import 'package:lab_2/Screen/searchPage.dart';

import 'Screen/CategoriesCurrent.dart';
import 'Screen/Home.dart';
import 'Screen/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}
