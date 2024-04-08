import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator1.0/material_route/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOneStateful(),
    );
  }
}
