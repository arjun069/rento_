import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF416165),
      ),
      body: stateless(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFF416165),
        backgroundColor: Color(0xFFEDF7F6),
        items: <Widget>[
          Icon(Icons.home, size: 20,color: Color(0xFFCAD2C5),),
          Icon(Icons.location_on, size: 20,color: Color(0xFFCAD2C5),),
          Icon(Icons.notifications, size: 20,color: Color(0xFFCAD2C5),),
          Icon(Icons.people, size: 20,color: Color(0xFFCAD2C5),),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

class stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ),
      ),
    );
  }
}


//
//Container(
//height:1000,
//width: 1000,
//color:  Color(0xFFEDF7F6),
//child: Card(
//child: Column(
//mainAxisAlignment: MainAxisAlignment.start,
//children: <Widget>[
//Text('sjehdne')
//],
//),
//),
//),
