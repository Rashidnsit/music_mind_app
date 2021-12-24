import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/controller/bottom_nav_bar_controller/bottom_nav_bar_controller.dart';
import 'package:music_mind_app/view/drawer/drawer.dart';
import 'package:music_mind_app/view/widgets/my_app_bar.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';
import 'package:music_mind_app/view/widgets/offer_card.dart';

class BottomNavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      init: BottomNavBarController(),
      builder: (controller) => Scaffold(
        key: scaffoldKey,
        appBar: MyAppBar(
          scaffoldKey: scaffoldKey,
        ),
        drawer: MyDrawer(),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                const OfferCard(),
                controller.screens[controller.currentIndex],
              ],
            ),
            CurrentPlaying(
              controller: controller.currentCategory,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: KSecondaryColor,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.currentScreen(index);
            controller.currentCategoryController(index);
          },
          backgroundColor: KPrimaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bxbxs-brain.png',
                color: controller.currentIndex == 0
                    ? KSecondaryColor
                    : KGrey2Color,
                height: 28,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: MyText(
                  text: 'Mind',
                  color: controller.currentIndex == 0
                      ? KSecondaryColor
                      : KGrey2Color,
                  size: 12,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/1.png',
                color: controller.currentIndex == 1
                    ? KSecondaryColor
                    : KGrey2Color,
                height: 28,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: MyText(
                  text: 'Body',
                  color: controller.currentIndex == 1
                      ? KSecondaryColor
                      : KGrey2Color,
                  size: 12,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/2.png',
                color: controller.currentIndex == 2
                    ? KSecondaryColor
                    : KGrey2Color,
                height: 28,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: MyText(
                  text: 'Sleep',
                  color: controller.currentIndex == 2
                      ? KSecondaryColor
                      : KGrey2Color,
                  size: 12,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/bibook-half.png',
                color: controller.currentIndex == 3
                    ? KSecondaryColor
                    : KGrey2Color,
                height: 28,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: MyText(
                  text: 'Learn',
                  color: controller.currentIndex == 3
                      ? KSecondaryColor
                      : KGrey2Color,
                  size: 12,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/claritysettings-solid.png',
                color: controller.currentIndex == 4
                    ? KSecondaryColor
                    : KGrey2Color,
                height: 28,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: MyText(
                  text: 'Work',
                  color: controller.currentIndex == 4
                      ? KSecondaryColor
                      : KGrey2Color,
                  size: 12,
                  weight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentPlaying extends StatelessWidget {
  var controller;

  CurrentPlaying({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        elevation: 5,
        color: KSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: defaultPadding,
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          leading: Image.asset(
            '${controller.coursesData[controller.currentIndex].courseIcon}',
            height: 36,
          ),
          title: MyText(
            text:
                '${controller.coursesData[controller.currentIndex].courseType}',
            size: 16,
            color: KBlackColor,
            weight: FontWeight.w700,
          ),
          subtitle: MyText(
            text:
                '${controller.coursesData[controller.currentIndex].levelName} | ${controller.coursesData[controller.currentIndex].missionName}',
            size: 12,
            maxlines: 2,
            color: KGreyColor,
            weight: FontWeight.w700,
          ),
          trailing: Image.asset(
            'assets/biplay-fill.png',
            color: KBlackColor,
            height: 30,
          ),
        ),
      ),
    );
  }
}
