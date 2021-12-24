import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/work_controller/work_controller.dart';
import 'package:music_mind_app/view/widgets/courses_widget.dart';

class Work extends StatelessWidget {
  final WorkController _workController = Get.put(WorkController());

  @override
  Widget build(BuildContext context) {
    return CoursesWidget(controller: _workController);
  }
}
