import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/missions_model.dart';

class LearnMissionController extends GetxController {
  var currentIndex = 0;
  RxList<MissionsModel> missions = [
    MissionsModel(
      levelName: 'Level 1',
      tagLine: 'Improve the final result by playing in sequence',
      missionsData: [
        MissionsData(
          thumbnail: 'assets/ll1.png',
          duration: '02:24',
          missionName: 'A',
          isCompleted: true,
        ),
        MissionsData(
          thumbnail: 'assets/ll2.png',
          duration: '02:24',
          missionName: 'B',
        ),
        MissionsData(
          thumbnail: 'assets/ll3.png',
          duration: '02:24',
          missionName: 'C',
        ),
        MissionsData(
          thumbnail: 'assets/ll4.png',
          duration: '02:24',
          missionName: 'D',
        ),
        MissionsData(
          thumbnail: 'assets/ll5.png',
          duration: '02:24',
          missionName: 'E',
        ),
        MissionsData(
          thumbnail: 'assets/ll6.png',
          duration: '02:24',
          missionName: 'F',
        ),
        MissionsData(
          thumbnail: 'assets/ll7.png',
          duration: '02:24',
          missionName: 'G',
        ),
        MissionsData(
          thumbnail: 'assets/ll1.png',
          duration: '02:24',
          missionName: 'H',
        ),
      ],
    ),
  ].obs;
}
