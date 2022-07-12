import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/logo-transparent.png",
                  width: Get.width * 0.5,
                ),
              ),
              Container(
                width: Get.width,
                height: Get.width * 0.5,
                child: Lottie.asset("assets/lottie/splash-lottie.json"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
