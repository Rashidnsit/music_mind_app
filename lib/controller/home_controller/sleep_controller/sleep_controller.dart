import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/courses_widget_model.dart';
import 'package:music_mind_app/view/home/sleep/sleep_missions/sleep_missions.dart';

class SleepController extends GetxController {
  int currentIndex = 0;
  RxList<CoursesWidgetModel> coursesData = [
    CoursesWidgetModel(
      courseIcon: 'assets/2.png',
      courseType: 'Sleep',
      levelName: 'Level 1',
      missionName: 'Mission A',
      courseName: 'THE COURSE',
      onTap: () => Get.to(() => SleepMissions()),
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s6.png',
          levelName: 'Level 1',
          levelCompleted: true,
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s4.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s4.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 1',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s2.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s8.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s5.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 2',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s3.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s7.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/s1.png',
          levelName: 'Level 3',
        ),
      ],
    ),
  ].obs;
}
