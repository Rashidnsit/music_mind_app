import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/controller/profile_controller/subscriptions_price/subscriptions_price_controller.dart';
import 'package:music_mind_app/view/profile/order_summary.dart';
import 'package:music_mind_app/view/widgets/my_app_bar.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class SubscriptionsPricing extends StatefulWidget {
  @override
  _SubscriptionsPricingState createState() => _SubscriptionsPricingState();
}

class _SubscriptionsPricingState extends State<SubscriptionsPricing> {
  bool? selected = false, bestValue = false;
  var textColor = KPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Pricing',
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          ListTile(
            title: MyText(
              text: 'Choose your plan',
              size: 16,
              weight: FontWeight.w600,
            ),
            subtitle: MyText(
              text: 'Choose your suitable plan based on your needs',
              color: KGreyColor,
              size: 14,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GetBuilder<SubscriptionsPriceController>(
            init: SubscriptionsPriceController(),
            builder: (controller) => SizedBox(
              height: 230,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.getPlansData.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  itemBuilder: (context, index) {
                    var plansData = controller.getPlansData[index];
                    return Plans(
                      planName: '${plansData.planName}',
                      planTagLine: '${plansData.planTagLine}',
                      price: '${plansData.price}',
                      duration: '${plansData.duration}',
                      haveBestValue: plansData.haveBestValue,
                    );
                  }),
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
                onPressed: () => Get.to(() => OrderSummary()),
                text: 'Continue',
                btnBgColor: KSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Plans extends StatefulWidget {
  var planName, planTagLine, price, duration;
  bool? haveBestValue;

  Plans({
    this.planName,
    this.planTagLine,
    this.price,
    this.duration,
    this.haveBestValue = false,
  });

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Card(
          color: widget.haveBestValue == true ? KGreenColor : KSecondaryColor,
          margin: const EdgeInsets.only(left: 7, right: 7, top: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    MyText(
                      text: '${widget.planName}',
                      size: 14,
                      color: widget.haveBestValue == true
                          ? KSecondaryColor
                          : KPrimaryColor,
                      weight: FontWeight.w700,
                    ),
                    MyText(
                      text: '${widget.planTagLine}',
                      size: 8,
                      color: widget.haveBestValue == true
                          ? KSecondaryColor
                          : KPrimaryColor,
                    ),
                  ],
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Noto Sans',
                      color: widget.haveBestValue == true
                          ? KSecondaryColor
                          : KPrimaryColor,
                    ),
                    children: [
                      const TextSpan(
                        text: '\$',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '${widget.price}',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '${widget.duration}',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                MyText(
                  text: '7 days free trial',
                  size: 8,
                  color: widget.haveBestValue == true
                      ? KSecondaryColor
                      : KPrimaryColor,
                ),
                widget.haveBestValue == true
                    ? Image.asset(
                        'assets/akar-iconscircle-check.png',
                        height: 25,
                        color: KSecondaryColor,
                      )
                    : const CircleAvatar(
                        radius: 12.0,
                        backgroundColor: KGreyColor,
                        child: Icon(
                          Icons.check,
                          color: KSecondaryColor,
                          size: 15,
                        ),
                      )
              ],
            ),
          ),
        ),
        widget.haveBestValue == true
            ? Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Align(
                  child: MyButton(
                    onPressed: () {},
                    text: 'Best Value',
                    weight: FontWeight.w700,
                    btnBgColor: KSecondaryColor,
                    textColor: KGreenColor,
                    height: 26,
                    radius: 4.0,
                    textSize: 10,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
