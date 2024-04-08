import 'package:flutter/material.dart';
import 'package:mobile_lab_3/Navigator1.0/material_route/screen2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            // builder: (BuildContext context) => ScreenTwo()));

            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (BuildContext context) => ScreenTwo(),
            //       settings:
            //           const RouteSettings(arguments: "Data from Screen 1"),
            //     ));

            final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ScreenTwo()));
          },
          child: Text('Go to Screen Two'),
        ),
      ),
    );
  }
}

class ScreenOneStateful extends StatefulWidget {
  const ScreenOneStateful({super.key});

  @override
  State<ScreenOneStateful> createState() => _ScreenOneStatefulState();
}

class _ScreenOneStatefulState extends State<ScreenOneStateful> {
  @override
  Widget build(BuildContext context) {
    String result = "";
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                // builder: (BuildContext context) => ScreenTwo()));

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (BuildContext context) => ScreenTwo(),
                //       settings:
                //           const RouteSettings(arguments: "Data from Screen 1"),
                //     ));

                final res = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ScreenTwo()));

                setState(() {
                  result = res ?? "nothing returned";
                });
              },
              child: Text('Go to Screen Two'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
