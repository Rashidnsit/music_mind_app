import 'package:get/get.dart';
import 'package:music_mind_app/model/widgets_model/courses_widget_model.dart';
import 'package:music_mind_app/view/home/learn/learn_missions/learn_missions.dart';

class LearnController extends GetxController {
  int currentIndex = 0;
  RxList<CoursesWidgetModel> coursesData = [
    CoursesWidgetModel(
      courseIcon: 'assets/bibook-half.png',
      courseType: 'Learn',
      levelName: 'Level 1',
      missionName: 'Mission A',
      courseName: 'THE COURSE',
      onTap: () => Get.to(() => LearnMissions()),
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L2.png',
          levelName: 'Level 1',
          levelCompleted: true,
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L3.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L4.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 1',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L5.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L7.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L5.png',
          levelName: 'Level 3',
        ),
      ],
    ),
    CoursesWidgetModel(
      courseName: 'Course 2',
      coursesThumbnailData: [
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L8.png',
          levelName: 'Level 1',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/l1.png',
          levelName: 'Level 2',
        ),
        CoursesThumbnailsModel(
          courseThumbnail: 'assets/L9.png',
          levelName: 'Level 3',
        ),
      ],
    ),
  ].obs;
}
