import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/user/login.dart';
import 'package:music_mind_app/view/widgets/logo.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.off(() => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Logo(
            height: 214,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'MUSIC',
                  style: TextStyle(
                    fontSize: 24,
                    color: KSecondaryColor,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.5,
                  ),
                ),
                TextSpan(
                  text: 'MIND',
                  style: TextStyle(
                    fontSize: 24,
                    color: KSecondaryColor,
                    fontFamily: 'Red Hat Display',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                  ),
                ),
              ],
            ),
          ),
          MyText(
            text: 'your mind creates the world',
            color: KGreyColor,
            size: 14,
            align: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
