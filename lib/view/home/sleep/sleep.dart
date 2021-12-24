import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/sleep_controller/sleep_controller.dart';
import 'package:music_mind_app/view/widgets/courses_widget.dart';

class Sleep extends StatelessWidget {
  final SleepController _sleepController = Get.put(SleepController());

  @override
  Widget build(BuildContext context) {
    return CoursesWidget(controller: _sleepController);
  }
}
