import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:music_mind_app/view/home/mind/mind.dart';
import 'package:music_mind_app/view/home/mind/mind_missions/mind_missions.dart';
import 'package:music_mind_app/view/splash_Screen/splash_screen.dart';
import 'package:music_mind_app/view/user/login.dart';
import 'package:music_mind_app/view/user/register.dart';

void main() => runApp(const MusicMindApp());

class MusicMindApp extends StatelessWidget {
  const MusicMindApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        fontFamily: 'Noto Sans',
        scaffoldBackgroundColor: KPrimaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: KPrimaryColor,
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: KPrimaryColor.withOpacity(0.5)),
      ),
      themeMode: ThemeMode.light,
      initialRoute: '/splash_screen',
      getPages: [
        GetPage(name: '/splash_screen', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/register', page: () => Register()),
        GetPage(name: '/bottom_nav_bar', page: () => BottomNavBar()),
        GetPage(name: '/mind', page: () => Mind()),
        GetPage(name: '/mind_missions', page: () => MindMissions()),
      ],
    );
  }
}
