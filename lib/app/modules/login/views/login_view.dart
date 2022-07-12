import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/constants.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding,
            ),
            child: Image.asset(
              "assets/images/logo-transparent.png",
              width: Get.width,
              height: Get.width / 2.5,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding * 3.5,
              right: kDefaultPadding * 3.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Lottie.asset(
                    "assets/lottie/login-lottie.json",
                    height: Get.width,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      icon: Image.asset(
                        "assets/icons/ico_google.png",
                        fit: BoxFit.cover,
                        height: 25,
                      ),
                      label: Text(
                        "Masuk dengan Google",
                        style: TextStyle(color: Colors.black45),
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
