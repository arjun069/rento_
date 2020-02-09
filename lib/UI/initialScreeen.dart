import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rento/lists.dart';

class initialScreenNew extends StatefulWidget {
  @override
  _initialScreenNewState createState() => _initialScreenNewState();
}

class _initialScreenNewState extends State<initialScreenNew> {
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF7F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black12),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black12),
            onPressed: () {},
          ),
        ],
      ),
      body: LayoutBuilder(
          builder: (context, constraints){
            var width = constraints.maxWidth;
            var height = constraints.maxHeight;
            return SizedBox(
              height: height * .4,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
                    child: SizedBox(
                      width: 100.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 45.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: (index % 2 == 0)
                                      ? Colors.white
                                      : Color(0xFF2a2d3f),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        offset: Offset(0.0, 10.0),
                                        blurRadius: 10.0)
                                  ],
                                  borderRadius:
                                  BorderRadius.circular(12.0)),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                images[index],
                                width: 172.5,
                                height: 129.0,
                              ),

//                              Padding(
//                                padding: EdgeInsets.all(12.0),
//                                child: Column(
//                                  crossAxisAlignment:
//                                  CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text(title[index],
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontFamily: "Montserrat-Bold",
//                                            color: (index % 2 == 0)
//                                                ? Color(0xFF2a2d3f)
//                                                : Colors.white)),
//                                    SizedBox(
//                                      height: 8.0,
//                                    ),
//                                    Text("NEW SELL",
//                                        style: TextStyle(
//                                            fontSize: 12.0,
//                                            fontFamily: "Montserrat-Medium",
//                                            color: (index % 2 == 0)
//                                                ? Color(0xFF2a2d3f)
//                                                : Colors.white)),
//                                    SizedBox(
//                                      height: 50.0,
//                                    ),
//                                    Text(price[index] + " \$",
//                                        style: TextStyle(
//                                            fontSize: 30.0,
//                                            fontFamily: "Montserrat-Bold",
//                                            color: (index % 2 == 0)
//                                                ? Color(0xFF2a2d3f)
//                                                : Colors.white))
//                                  ],
//                                ),
//                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );

          },
      ),
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
