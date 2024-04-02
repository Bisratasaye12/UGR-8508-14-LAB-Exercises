import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          actions: const [Icon(Icons.exit_to_app), Icon(Icons.settings)],
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/img2.jpg',
                    width: 500,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('1975 Porsche 911 caerra',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.thumb_up_outlined),
                      Text('3'),
                      Icon(Icons.message),
                      Text('3'),
                      Icon(Icons.share),
                      Text('2'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: EssentialInformation(),
            ),
          ],
        ),
      ),
    );
  }
}

class EssentialInformation extends StatelessWidget {
  const EssentialInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Essential Information",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const Text("1 of 3 done",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ],
          ),
        )),
        Container(
          width: 500,
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle_outline, color: Colors.green),
                    Text("Year, make, model", style: TextStyle(fontSize: 12)),
                    Icon(Icons.edit, color: Colors.grey),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Year", style: TextStyle(fontSize: 12)),
                    const Text("Make", style: TextStyle(fontSize: 12)),
                    const Text("Model", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline, color: Colors.green),
                    Text("Description", style: TextStyle(fontSize: 12)),
                    Icon(Icons.edit, color: Colors.grey),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline, color: Colors.green),
                    Text("Photos", style: TextStyle(fontSize: 12)),
                    Icon(Icons.edit, color: Colors.grey),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
