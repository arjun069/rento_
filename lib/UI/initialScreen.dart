//import 'package:flutter/material.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:rento/product_list.dart';
//
//class initalScreen extends StatefulWidget {
//  @override
//  _initalScreenState createState() => new _initalScreenState();
//}
//
//class _initalScreenState extends State<initalScreen> {
//  int _currentIndex = 0;
//  int _page = 0;
//  GlobalKey _bottomNavigationKey = GlobalKey();
//  Widget _buildGradientContainer(double width, double height) {
//    return Align(
//      alignment: Alignment.topRight,
//      child: Container(
//        width: width * .8,
//        height: height / 2,
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [Color(0xFFfbfcfd), Color(0xFFf2f3f8)],
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                stops: [0.5, 1.0])),
//      ),
//    );
//  }
//
//  Widget _buildAppBar() {
//    return Positioned(
//      top: 40.0,
//      left: 20.0,
//      right: 20.0,
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          IconButton(
//            icon: Icon(Icons.menu, color: Colors.black),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.search, color: Colors.black),
//            onPressed: () {},
//          )
//        ],
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      backgroundColor: Color(0xFFf2f3f8),
//      body: LayoutBuilder(
//        builder: (context, constraints) {
//          var width = constraints.maxWidth;
//          var height = constraints.maxHeight;
//
//          return Stack(
//            fit: StackFit.expand,
//            children: <Widget>[
//              _buildGradientContainer(width, height),
//              _buildAppBar(),
////              _buildTitle(height),
//              Align(
//                alignment: Alignment.centerRight,
//                child: SizedBox(
//                  height: height * .4,
//                  child: ListView.builder(
//                    itemCount: images.length,
//                    scrollDirection: Axis.horizontal,
//                    physics: BouncingScrollPhysics(),
//                    itemBuilder: (context, index) {
//                      return Padding(
//                        padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
//                        child: SizedBox(
//                          width: 100.0,
//                          child: Stack(
//                            fit: StackFit.expand,
//                            children: <Widget>[
//                              Padding(
//                                padding: EdgeInsets.only(top: 45.0),
//                                child: Container(
//                                  decoration: BoxDecoration(
//                                      color: (index % 2 == 0)
//                                          ? Colors.white
//                                          : Color(0xFF2a2d3f),
//                                      boxShadow: [
//                                        BoxShadow(
//                                            color: Colors.black12,
//                                            offset: Offset(0.0, 10.0),
//                                            blurRadius: 10.0)
//                                      ],
//                                      borderRadius:
//                                      BorderRadius.circular(12.0)),
//                                ),
//                              ),
//                              Column(
//                                crossAxisAlignment: CrossAxisAlignment.center,
//                                children: <Widget>[
//                                  Image.asset(
//                                    images[index],
//                                    width: 172.5,
//                                    height: 159.0,
//                                  ),
//                                  SizedBox(
//                                    height: 12.0,
//                                  ),
//                                  Padding(
//                                    padding: EdgeInsets.all(12.0),
//                                    child: Column(
//                                      crossAxisAlignment:
//                                      CrossAxisAlignment.start,
//                                      children: <Widget>[
//                                        Text(title[index],
//                                            style: TextStyle(
//                                                fontSize: 16.0,
//                                                fontFamily: "Montserrat-Bold",
//                                                color: (index % 2 == 0)
//                                                    ? Color(0xFF2a2d3f)
//                                                    : Colors.white)),
//                                        SizedBox(
//                                          height: 8.0,
//                                        ),
//                                        Text("NEW SELL",
//                                            style: TextStyle(
//                                                fontSize: 12.0,
//                                                fontFamily: "Montserrat-Medium",
//                                                color: (index % 2 == 0)
//                                                    ? Color(0xFF2a2d3f)
//                                                    : Colors.white)),
//                                        SizedBox(
//                                          height: 50.0,
//                                        ),
//                                        Text(price[index] + " \$",
//                                            style: TextStyle(
//                                                fontSize: 30.0,
//                                                fontFamily: "Montserrat-Bold",
//                                                color: (index % 2 == 0)
//                                                    ? Color(0xFF2a2d3f)
//                                                    : Colors.white))
//                                      ],
//                                    ),
//                                  )
//                                ],
//                              )
//                            ],
//                          ),
//                        ),
//                      );
//                    },
//                  ),
//                ),
//              )
//            ],
//          );
//        },
//      ),
//      bottomNavigationBar: CurvedNavigationBar(
//        color: Color(0xFF416165),
//        backgroundColor: Color(0xFFEDF7F6),
//        items: <Widget>[
//          Icon(Icons.home, size: 20,color: Color(0xFFCAD2C5),),
//          Icon(Icons.location_on, size: 20,color: Color(0xFFCAD2C5),),
//          Icon(Icons.notifications, size: 20,color: Color(0xFFCAD2C5),),
//          Icon(Icons.people, size: 20,color: Color(0xFFCAD2C5),),
//        ],
//        onTap: (index) {
//          setState(() {
//            _page = index;
//          });
//        },
//      ),
//    );
//  }
//}
//
//
