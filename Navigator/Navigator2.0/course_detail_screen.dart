import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  final course;
  const CourseDetailScreen({key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              course.name,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              course.code,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              course.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
