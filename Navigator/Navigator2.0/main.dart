import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator2.0/course.dart';
import 'package:mobile_lab_3/Navigator2.0/course_detail_screen.dart';
import 'package:mobile_lab_3/Navigator2.0/course_list_screen.dart';

void main(List<String> args) {
  runApp(CourseApp());
}

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  List<Course> courses = [
    Course(
        name: "SiTE-001",
        code: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        name: "SiTE-002",
        code: "Data Structures",
        description: "Data Structures, Algorithms, Complexity"),
    Course(
        name: "SiTE-003",
        code: "Software Engineering",
        description: "Software Development Life Cycle, Testing, Maintenance"),
  ];

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onPopPage: (route, result) {
         if (!route.didPop(result)) {
           return false;
         }
         setState(() {
           _selectedCourse = null;
         });
         return true;
       },

        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CourseListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailScreen(
                  course: _selectedCourse!,
                ))
        ],
      ),
    );
  }
}
