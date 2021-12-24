import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/courses_widget_model.dart';
import 'package:music_mind_app/view/home/mind/mind_missions/mind_missions.dart';

class MindController extends GetxController {
  int currentIndex = 0;
  RxList<CoursesWidgetModel> coursesData = [
    CoursesWidgetModel(
      courseIcon: 'assets/bxbxs-brain.png',
      courseType: 'Mind',
      levelName: 'Level 1',
      missionName: 'Mission A',
      courseName: 'THE COURSE',
      onTap: () => Get.to(() => MindMissions()),
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplashYui5vfKHuzs.png',
          levelName: 'Level 1',
          levelCompleted: true,
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplash-5nwt_aN2E0.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplashfk3XUcfTAvk.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 1',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplash1zikZJVXSfA.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplashyw1y-alKGrg.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplash8w7b4SdhOgw.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 2',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplashVD-Vjc8VmRA.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplash-Q_t4SCN8c4.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/unsplashUXR--t8CZ1U.png',
          levelName: 'Level 3',
        ),
      ],
    ),
  ].obs;
}
