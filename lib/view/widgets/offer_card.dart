
import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/widgets/my_button.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: KPrimaryColor,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/slidebg.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(right: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Be First',
                          size: 10,
                        ),
                        MyText(
                          text: 'Get special offer for\ntoday up to 50% off.',
                          size: 12,
                          weight: FontWeight.w700,
                        ),
                        MyButton(
                          onPressed: () {},
                          textSize: 8,
                          weight: FontWeight.w700,
                          text: 'Get Offer Now',
                          textColor: KBlackColor,
                          height: 23,
                          radius: 4.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}