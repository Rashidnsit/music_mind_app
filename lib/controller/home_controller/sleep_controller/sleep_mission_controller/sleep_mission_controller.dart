import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/missions_model.dart';

class SleepMissionController extends GetxController {
  var currentIndex = 0;
  RxList<MissionsModel> missions = [
    MissionsModel(
      levelName: 'Level 1',
      tagLine: 'Improve the final result by playing in sequence',
      missionsData: [
        MissionsData(
          thumbnail: 'assets/ss1.png',
          duration: '02:24',
          missionName: 'A',
          isCompleted: true,
        ),
        MissionsData(
          thumbnail: 'assets/ss2.png',
          duration: '02:24',
          missionName: 'B',
        ),
        MissionsData(
          thumbnail: 'assets/ss3.png',
          duration: '02:24',
          missionName: 'C',
        ),
        MissionsData(
          thumbnail: 'assets/ss4.png',
          duration: '02:24',
          missionName: 'D',
        ),
        MissionsData(
          thumbnail: 'assets/ss5.png',
          duration: '02:24',
          missionName: 'E',
        ),
        MissionsData(
          thumbnail: 'assets/ss6.png',
          duration: '02:24',
          missionName: 'F',
        ),
        MissionsData(
          thumbnail: 'assets/ss7.png',
          duration: '02:24',
          missionName: 'G',
        ),
        MissionsData(
          thumbnail: 'assets/ss1.png',
          duration: '02:24',
          missionName: 'H',
        ),
      ],
    ),
  ].obs;
}
