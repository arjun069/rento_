import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';


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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: 300,
          height: 440,
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF596157),
                ),
                width: 900,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(top:18.0,bottom: 18),
                      child: CircularProfileAvatar(
                        'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                        radius: 40, // sets radius, default 50.0
                        backgroundColor: Colors.transparent, // sets background color, default Colors.white
                        borderWidth: 5,  // sets border, default 0.0
                        initialsText: Text(
                          "AD",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),  // sets initials text, set your own style, default Text('')
                        borderColor: Colors.teal, // sets border color, default Colors.white
                        elevation: 5.0, // sets elevation (shadow of the profile picture), default value is 0.0
                        foregroundColor: Colors.brown.withOpacity(0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
                        cacheImage: true,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top:10.0,bottom: 10.0),
                      child: RaisedButton(onPressed: (){},child: Text('LOGIN'),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                      ),),
                    )
                  ],
                ),
              ),
              deets(Icons.location_on,'My Places'),
              deets(Icons.favorite,'Likes'),
              deets(Icons.star,'Reviews'),
              deets(Icons.lock,'Change Password'),
              deets(Icons.edit,'Edit Profile'),
              deets(Icons.settings,'Settings'),

            ],
          ),
        ),
      ),
    );
  }
}

class deets extends StatelessWidget {

  deets(this.icon,this.tex);
  IconData icon;
  String tex;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:8.0,right: 8.0,top: 13.5,bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(icon,color: Color(0xFF416165),),
              Padding(
                padding:  EdgeInsets.only(left:8.0),
                child: Text(tex),
              ),
            ],
          ),

          Icon(Icons.chevron_right)
        ],
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
