import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/work_controller/work_mission_controller/work_mission_controller.dart';
import 'package:music_mind_app/view/widgets/mission_widget.dart';

class WorkMission extends StatelessWidget {
  final WorkMissionController _workMissionController =
  Get.put(WorkMissionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Image.asset(
              'assets/arrow_Back.png',
              height: 15,
            ),
          ),
        ),
      ),
      body: MissionsWidget(controller: _workMissionController),
    );
  }
}
