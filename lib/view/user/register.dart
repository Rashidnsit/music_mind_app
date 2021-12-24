import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/user/login.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';
import 'package:music_mind_app/view/widgets/my_text_field.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        padding: defaultPadding,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 60,
          ),
          heading('Register'),
          const SizedBox(
            height: 60,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(
                label: 'First Name',
                hintText: 'Antonie',
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                label: 'Last Name',
                hintText: 'Robbinson',
              ),
              const SizedBox(
                height: 30,
              ),
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
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          MyButton(
            onPressed: () {},
            text: 'Register',
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Get.to(() => Login()),
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
                    text: 'Already have an account?',
                  ),
                  TextSpan(
                    text: ' Login',
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
    );
  }
}
