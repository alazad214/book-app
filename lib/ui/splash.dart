
import 'package:book_app/ui/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => BottomNavBar());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          "Book App",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      )),
    );
  }
}
