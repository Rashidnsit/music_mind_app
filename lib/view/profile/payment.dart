import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/widgets/my_app_bar.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text_field.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Payment',
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: defaultPadding,
        children: [
          MyTextField(
            label: 'Card Number',
            hintText: '0123 4567 8910 1112',
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: MyTextField(
                  label: 'Expiration Date',
                  hintText: 'MM/YY',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: MyTextField(
                  label: 'Security Code (CVV)',
                  hintText: '123',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Card Holder Name',
            hintText: 'Antonnie Robinson',
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
            label: 'Address',
            hintText: '2464 Royal Ln. Mesa',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'City',
            hintText: 'New Jersey',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Country',
            hintText: 'New Jersey',
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            label: 'Zip/Postal Code',
            hintText: '45463',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: KPrimaryColor,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyButton(
                onPressed: () {},
                text: 'Checkout',
                btnBgColor: KSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
