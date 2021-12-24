
// This Model is used for Entire Courses
import 'package:flutter/cupertino.dart';

class CoursesWidgetModel {
  var courseIcon, courseType, levelName,missionName, courseName;
  List<CoursesThumbnailsModel>? coursesThumbnailData;
  VoidCallback? onTap;

  CoursesWidgetModel({
    this.courseIcon,
    this.courseType,
    this.levelName,
    this.missionName,
    this.courseName,
    this.coursesThumbnailData,
    this.onTap,
  });
}

class CoursesThumbnailsModel{
  var courseThumbnail, levelName;
  bool? levelCompleted;

  CoursesThumbnailsModel({
    this.courseThumbnail,
    this.levelName,
    this.levelCompleted = false,
  });
}
