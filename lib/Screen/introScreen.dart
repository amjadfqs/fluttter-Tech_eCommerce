import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home.dart';
import './SplashScrean.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: ' مرحبا في تطبيق التسوق',
      body: 'Welcome to shopping app',
      image: Center(
        child: Lottie.asset('assets/lottie/1.json'),
      ),
      decoration: const PageDecoration(
        bodyFlex: 1,
        imageFlex: 2,
        titleTextStyle: TextStyle(
          fontFamily: 'Noto',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: ' يقوم التطبيق بعرض المنتحات الالكترونية',
      body: ' المنتحات الالكترونية',
      image: Center(
        child: Lottie.asset('assets/lottie/3.json'),
      ),
      decoration: const PageDecoration(
        bodyFlex: 2,
        imageFlex: 3,
        titleTextStyle: TextStyle(
          fontFamily: 'Noto',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: ' يقوم التطبيق بعرض المنتحات الالكترونية',
      body: ' المنتحات الالكترونية',
      image: Center(
        child: Lottie.asset('assets/lottie/2.json'),
      ),
      decoration: const PageDecoration(
        bodyFlex: 2,
        imageFlex: 2,
        titleTextStyle: TextStyle(
          fontFamily: 'Noto',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.black87,
            activeSize: Size.square(20),
            activeColor: Color(0xFFD5C785),
          ),
          showDoneButton: true,
          done: const Text('Done',
              style: TextStyle(fontSize: 25, color: Colors.black87)),
          showSkipButton: true,
          skip: const Text('Skip',
              style: TextStyle(fontSize: 25, color: Colors.black87)),
          showNextButton: true,
          next:
              const Icon(Icons.arrow_forward, size: 30, color: Colors.black87),
          onDone: () => OnDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void OnDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }
}
