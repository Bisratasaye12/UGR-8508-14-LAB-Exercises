import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator2.0/course.dart';

class CourseListScreen extends StatelessWidget {
  final List<Course> courses;
  final ValueChanged<Course> onTapped;
  const CourseListScreen({key, required this.courses, required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Courses")),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.name),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            )
        ],
      ),
    );
  }
}
