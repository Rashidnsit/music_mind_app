import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/courses_widget_model.dart';
import 'package:music_mind_app/view/home/work/work_mission/work_mission.dart';

class WorkController extends GetxController {
  int currentIndex = 0;
  RxList<CoursesWidgetModel> coursesData = [
    CoursesWidgetModel(
      courseIcon: 'assets/claritysettings-solid.png',
      courseType: 'Work',
      levelName: 'Level 1',
      missionName: 'Mission A',
      courseName: 'THE COURSE',
      onTap: () => Get.to(() => WorkMission()),
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W3.png',
          levelName: 'Level 1',
          levelCompleted: true,
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W1.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W4.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 1',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W7.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W6.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W8.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 2',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W5.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W1.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/W5.png',
          levelName: 'Level 3',
        ),
      ],
    ),
  ].obs;
}
