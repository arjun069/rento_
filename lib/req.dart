import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
//import 'package:onboarding_page/yo_page.dart';

//String url = "http://172.16.15.144:8000";
String url = "http://13.233.173.34:5000/";
String iD = "";

Future postUserID(BuildContext context, String username, String password)async
{
  http.Response response = await http.post("$url/auth/login",
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"password":password,"username":username}));
  print(response.body);
  if(response.statusCode == 200)
  {
    var decodedData = jsonDecode(response.body);
    iD = decodedData['user']['id'];
    print(iD);
    print(decodedData['message']);
//    if(decodedData['message'] == 'Welcome New User')
//      {
//    Navigator.push(context, MaterialPageRoute(builder: (context) => YoPage(decodedData["message"])));
//      }
//    plastic = decodedData['user']['plastic'];
//    credits = decodedData['user']['credits'];

  }
  else
  {
    print(response.statusCode);
    return "Error";
  }
}



