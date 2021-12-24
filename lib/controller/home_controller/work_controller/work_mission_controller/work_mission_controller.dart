import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/missions_model.dart';

class WorkMissionController extends GetxController {
  var currentIndex = 0;
  RxList<MissionsModel> missions = [
    MissionsModel(
      levelName: 'Level 1',
      tagLine: 'Improve the final result by playing in sequence',
      missionsData: [
        MissionsData(
          thumbnail: 'assets/ww1.png',
          duration: '02:24',
          missionName: 'A',
          isCompleted: true,
        ),
        MissionsData(
          thumbnail: 'assets/ww2.png',
          duration: '02:24',
          missionName: 'B',
        ),
        MissionsData(
          thumbnail: 'assets/ww3.png',
          duration: '02:24',
          missionName: 'C',
        ),
        MissionsData(
          thumbnail: 'assets/ww4.png',
          duration: '02:24',
          missionName: 'D',
        ),
        MissionsData(
          thumbnail: 'assets/ww5.png',
          duration: '02:24',
          missionName: 'E',
        ),
        MissionsData(
          thumbnail: 'assets/ww6.png',
          duration: '02:24',
          missionName: 'F',
        ),
        MissionsData(
          thumbnail: 'assets/ww7.png',
          duration: '02:24',
          missionName: 'G',
        ),
        MissionsData(
          thumbnail: 'assets/ww1.png',
          duration: '02:24',
          missionName: 'H',
        ),
      ],
    ),
  ].obs;
}
