import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator1.0/material_route/screen1.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // String text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => ScreenOne()));

                // Navigator.pop(context);

                Navigator.pop(context, "Returning Yes");
              },
              child: Text('Back to Screen One'),
            ),
            // Text(text),
          ],
        ),
      ),
    );
  }
}
