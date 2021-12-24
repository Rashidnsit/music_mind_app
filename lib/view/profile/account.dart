import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/widgets/my_app_bar.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text_field.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Account',
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: defaultPadding,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/unsplash3JmfENcL24M.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/camera.png',
                height: 38,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          MyTextField(
            label: 'Display Name',
            hintText: 'Antonie Robbinson',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'First Name',
            hintText: 'Antonie',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Last Name',
            hintText: 'Robbinson',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Email',
            hintText: 'example@example.com',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Phone',
            hintText: '123456789',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            maxlines: 10,
            label: 'About',
            hintText: 'Hi I’m a student form Turkey',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: KPrimaryColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyButton(
                onPressed: () {},
                text: 'Save',
                btnBgColor: KSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
