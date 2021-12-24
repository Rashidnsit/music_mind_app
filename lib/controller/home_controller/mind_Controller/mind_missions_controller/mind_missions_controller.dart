import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/missions_model.dart';

class MindMissionsController extends GetxController {
  var currentIndex = 0;
  RxList<MissionsModel> missions = [
    MissionsModel(
      levelName: 'Level 1',
      tagLine: 'Improve the final result by playing in sequence',
      missionsData: [
        MissionsData(
          thumbnail: 'assets/mm1.png',
          duration: '02:24',
          missionName: 'A',
          isCompleted: true,
        ),
        MissionsData(
          thumbnail: 'assets/mm2.png',
          duration: '02:24',
          missionName: 'B',
        ),
        MissionsData(
          thumbnail: 'assets/mm3.png',
          duration: '02:24',
          missionName: 'C',
        ),
        MissionsData(
          thumbnail: 'assets/mm4.png',
          duration: '02:24',
          missionName: 'D',
        ),
        MissionsData(
          thumbnail: 'assets/mm5.png',
          duration: '02:24',
          missionName: 'E',
        ),
        MissionsData(
          thumbnail: 'assets/mm6.png',
          duration: '02:24',
          missionName: 'F',
        ),
        MissionsData(
          thumbnail: 'assets/mm7.png',
          duration: '02:24',
          missionName: 'G',
        ),
        MissionsData(
          thumbnail: 'assets/mm1.png',
          duration: '02:24',
          missionName: 'H',
        ),
      ],
    ),
  ].obs;
}
