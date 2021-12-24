import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/sleep_controller/sleep_mission_controller/sleep_mission_controller.dart';
import 'package:music_mind_app/view/widgets/mission_widget.dart';

class SleepMissions extends StatelessWidget {
  final SleepMissionController _sleepMissionController =
  Get.put(SleepMissionController());

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
      body: MissionsWidget(controller: _sleepMissionController),
    );
  }
}
