import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Akademie'),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Hello World!'),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Switch(
                value: isOn,
                onChanged: (switchIsOn) {
                  setState(() {
                    isOn = switchIsOn;
                  });
                  
                })
          ],
        )),
      ),
    );
  }
}
