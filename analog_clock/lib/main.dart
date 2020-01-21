import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'home.dart';

void main() => runApp(AnalogClockApp());

class AnalogClockApp extends StatefulWidget {
  _AlarmAppState createState() => _AlarmAppState();
}

class _AlarmAppState extends State<AnalogClockApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'SourceSansPro',
          primaryColor: Color(0xff1B2C57),
          accentColor: Color(0xff65D1BA),
        ),
        // darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
