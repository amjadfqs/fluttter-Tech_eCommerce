import 'package:flutter/material.dart';
import './Screen/Login.dart';
import './Screen/SignUp.dart';
import './Screen/Home.dart';
import './Screen/CategoriesPage.dart';

final Map<String, WidgetBuilder> routers = {
  Home.routerName: (context) => Home(),
  CategoriesPage.routerName: (context) => CategoriesPage(),
};
