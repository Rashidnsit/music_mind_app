import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/drawer/drawer.dart';
import 'package:music_mind_app/view/widgets/logo.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  MyAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        padding: const EdgeInsets.only(top: 20),
        onPressed: () => scaffoldKey.currentState!.openDrawer(),
        icon: Image.asset(
          'assets/icon-park_hamburger-button.png',
          height: 16,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Wrap(
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Logo(
              height: 36,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'MUSIC',
                    style: TextStyle(
                      fontSize: 18,
                      color: KSecondaryColor,
                      fontFamily: 'Red Hat Display',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.5,
                    ),
                  ),
                  TextSpan(
                    text: 'MIND',
                    style: TextStyle(
                      fontSize: 18,
                      color: KSecondaryColor,
                      fontFamily: 'Red Hat Display',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
  }) : super(key: key);

  var title;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/arrow_Back.png',
                height: 15,
              ),
            ],
          ),
        ),
      ),
      title: MyText(
        text: '$title',
        size: 18,
        weight: FontWeight.w700,
      ),
    );
  }
}
