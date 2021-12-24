import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:music_mind_app/view/user/register.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';
import 'package:music_mind_app/view/widgets/my_text_field.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            heading('Login'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextField(
                  label: 'Email',
                  hintText: 'example@example.com',
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextField(
                  label: 'Password',
                  hintText: '********',
                  obsecure: true,
                ),
                MyText(
                  text: 'Forgot Passoword?',
                  size: 16,
                  weight: FontWeight.w600,
                ),
              ],
            ),
            MyButton(
              onPressed: () => Get.to(() => BottomNavBar()),
              text: 'Login',
            ),
            MyText(
              text: 'or continue with',
              size: 14,
              align: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Group.png',
                  height: 28,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  'assets/Group 17.png',
                  height: 28,
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Get.to(() => Register()),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Noto Sans',
                    color: KGrey2Color,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                      text: 'Don’t have an account?',
                    ),
                    TextSpan(
                      text: ' Register',
                      style: TextStyle(
                        color: KSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
