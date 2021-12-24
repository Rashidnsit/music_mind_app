import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/profile/payment.dart';
import 'package:music_mind_app/view/widgets/my_app_bar.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';
import 'package:music_mind_app/view/widgets/my_text_field.dart';

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Order Summary',
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          ListTile(
            title: MyText(
              text: 'Detail Order',
              size: 16,
              weight: FontWeight.w700,
            ),
          ),
          ListTile(
            title: MyText(
              text: 'Plan',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: 'The Deep End',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          ListTile(
            title: MyText(
              text: 'Duration',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: 'Until Canceled',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          ListTile(
            title: MyText(
              text: 'Free Trial',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: '7 days',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: KSecondaryColor,
            indent: 15,
            endIndent: 15,
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            title: MyText(
              text: 'Sub total',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: '\$2.49',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          ListTile(
            title: MyText(
              text: 'Sales Tax (9%)',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: '\$0.22',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          ListTile(
            title: MyText(
              text: 'Sales Tax (9%)',
              size: 14,
              color: KSecondaryColor,
              weight: FontWeight.w500,
            ),
            trailing: MyText(
              text: '\$0.22',
              size: 14,
              color: KGrey2Color,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: MyText(
              text: 'Billed montly',
              size: 18,
              color: KSecondaryColor,
              weight: FontWeight.w700,
            ),
            trailing: MyText(
              text: '\$2.71',
              size: 18,
              weight: FontWeight.w700,
              color: KSecondaryColor,
            ),
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
                onPressed: () => Get.to(() => Payment()),
                text: 'Pay',
                btnBgColor: KSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
