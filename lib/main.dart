import 'package:flutter/material.dart';
import 'package:lab_2/Screen/CategoriesPage.dart';

import 'Screen/CategoriesCurrent.dart';
import 'Screen/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}
