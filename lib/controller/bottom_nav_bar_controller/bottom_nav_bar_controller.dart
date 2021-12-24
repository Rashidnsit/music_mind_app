import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/body_controller/body_controller.dart';
import 'package:music_mind_app/controller/home_controller/learn_controller/learn_controller.dart';
import 'package:music_mind_app/controller/home_controller/mind_Controller/mind_controller.dart';
import 'package:music_mind_app/controller/home_controller/sleep_controller/sleep_controller.dart';
import 'package:music_mind_app/controller/home_controller/work_controller/work_controller.dart';
import 'package:music_mind_app/view/home/body/body.dart';
import 'package:music_mind_app/view/home/learn/learn.dart';
import 'package:music_mind_app/view/home/mind/mind.dart';
import 'package:music_mind_app/view/home/sleep/sleep.dart';
import 'package:music_mind_app/view/home/work/work.dart';

class BottomNavBarController extends GetxController {
  final MindController _mindController = Get.put(MindController());
  final BodyController _bodyController = Get.put(BodyController());
  final SleepController _sleepController = Get.put(SleepController());
  final LearnController _learnController = Get.put(LearnController());
  final WorkController _workController = Get.put(WorkController());

  int currentIndex = 0;
  var currentCategory;
  final List<Widget> screens = [
    Mind(),
    Boddy(),
    Sleep(),
    Learn(),
    Work(),
  ];

  @override
  void onInit() { // called immediately after the widget is allocated memory
    currentCategory = _mindController;
    super.onInit();
  }

  void currentScreen(int index) {
    currentIndex = index;
    update();
  }

  currentCategoryController(int index) {
    switch (index) {
      case 0:
        {
          currentCategory = _mindController;
        }
        break;
      case 1:
        {
          currentCategory = _bodyController;
        }
        break;
      case 2:
        {
          currentCategory = _sleepController;
        }
        break;
      case 3:
        {
          currentCategory = _learnController;
        }
        break;
      case 4:
        {
          currentCategory = _workController;
        }
        break;
      default:
        {
          currentCategory = _mindController;
        }
        break;
    }
    update();
  }
}
