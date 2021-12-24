import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/learn_controller/learn_controller.dart';
import 'package:music_mind_app/view/widgets/courses_widget.dart';

class Learn extends StatelessWidget {
  final LearnController _learnController = Get.put(LearnController());

  @override
  Widget build(BuildContext context) {
    return CoursesWidget(controller: _learnController);
  }
}
