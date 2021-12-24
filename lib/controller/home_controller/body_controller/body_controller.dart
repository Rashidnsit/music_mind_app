import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/courses_widget_model.dart';
import 'package:music_mind_app/view/home/body/body_missions/body_missions.dart';

class BodyController extends GetxController {
  int currentIndex = 0;
  RxList<CoursesWidgetModel> coursesData = [
    CoursesWidgetModel(
      courseIcon: 'assets/1.png',
      courseType: 'Body',
      levelName: 'Level 1',
      missionName: 'Mission A',
      courseName: 'THE COURSE',
      onTap: () => Get.to(() => BodyMissions()),
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/b.png',
          levelName: 'Level 1',
          levelCompleted: true,
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/g.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/i.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 1',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/c.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/f.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/h.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 2',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/a.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/d.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/e.png',
          levelName: 'Level 3',
        ),
      ],
    ),
  ].obs;
}
