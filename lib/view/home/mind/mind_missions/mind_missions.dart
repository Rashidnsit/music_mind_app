import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/controller/home_controller/mind_Controller/mind_missions_controller/mind_missions_controller.dart';
import 'package:music_mind_app/view/widgets/mission_widget.dart';

class MindMissions extends StatelessWidget {
  final MindMissionsController _mindMissionsController =
      Get.put(MindMissionsController());

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
      body: MissionsWidget(controller: _mindMissionsController),
    );
  }
}
