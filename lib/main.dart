import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:rento/UI/initialScreeen.dart';
import 'package:rento/UI/initialScreen.dart';
import 'package:rento/login.dart';


void main() => runApp(MaterialApp(
  initialRoute: MyHomePage.id,
  routes: {
    MyHomePage.id:(context) => MyHomePage(),
    login.id:(context) => login(),


  },
  debugShowCheckedModeBanner: false,
));

