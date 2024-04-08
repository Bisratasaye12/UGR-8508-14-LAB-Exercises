import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator1.0/On_Generate/screen3.dart';
import 'package:mobile_lab_3/Navigator1.0/material_route/screen2.dart';

void main() {
  runApp(OnGenerate());
}

class OnGenerate extends StatelessWidget {
  const OnGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation on generate',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => ScreenTwo());
          case '/four':
            return MaterialPageRoute(builder: (context) => ScreenThree());
        }
      },
    );
  }
}
