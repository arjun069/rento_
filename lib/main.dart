import 'package:flutter/material.dart';
import 'package:rento/UI/initialScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.black,
//      ),
      home: FirstScreen(),
    );
  }
}


