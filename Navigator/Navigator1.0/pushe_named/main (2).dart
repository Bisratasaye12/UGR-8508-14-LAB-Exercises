import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator1.0/pushe_named/Widget_four.dart';
import 'package:mobile_lab_3/Navigator1.0/pushe_named/Widget_three.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/screen_one',
      routes: {
        '/screen_one': (context) => Widget_3(),
        '/screen_two': (context) => Widget_4()
      },
    ));
