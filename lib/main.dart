import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab_2/Screen/CategoriesPage.dart';
import 'package:lab_2/Screen/DetailPage.dart';
import 'package:lab_2/Screen/SignUp.dart';
import 'package:lab_2/Screen/introScreen.dart';
import 'package:lab_2/Screen/searchPage.dart';

import 'Screen/CategoriesCurrent.dart';
import 'Screen/Home.dart';
import 'Screen/Login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return IntroScreen();
          } else {
            return SignUp();
          }
        },
      ),
    );
  }
}
