import 'package:flutter/material.dart';
import 'package:flutter_scratch/models/course.dart';
import 'package:flutter_scratch/screens/home/Widget/category_title.dart';
import 'package:flutter_scratch/screens/home/Widget/course_item.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Xu hướng tuần', 'xem thêm'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: courseList.length,
              itemBuilder: (context, index) => CourseItem(courseList[index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 15,
                // https://www.youtube.com/watch?v=LfabDPFhegc
                // 56:50
              ),
            ),
          )
        ],
      ),
    );
  }
}
