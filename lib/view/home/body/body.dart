import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/body_controller/body_controller.dart';
import 'package:music_mind_app/view/widgets/courses_widget.dart';

class Boddy extends StatelessWidget {
  final BodyController _bodyController = Get.put(BodyController());

  @override
  Widget build(BuildContext context) {
    return CoursesWidget(controller: _bodyController);
  }
}
