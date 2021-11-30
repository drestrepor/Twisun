import 'package:flutter/material.dart';
import 'package:login_twisun/charts/src/pages/battery_data.dart';
import 'package:login_twisun/home/home.dart';
import 'login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twisun',
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => Home(),
        "/batchart": (BuildContext context) => BatChart(),
        "/batchartTempr": (BuildContext context) => BatCharTempr()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
