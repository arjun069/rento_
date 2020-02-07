//import 'package:flutter/material.dart';
////import 'Custom_Icons.dart';
//import 'package:rento/product list.dart';
//
//void main() => runApp(MaterialApp(
//  home: MyApp(),
//  debugShowCheckedModeBanner: false,
//));
//
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => new _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  int _currentIndex = 0;
//
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
//  Widget _buildTitle(double height) {
//    return Positioned(
//      top: height * .2,
//      left: 30.0,
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text("Wooden Armchair",
//              style: TextStyle(fontSize: 28.0, fontFamily: "Montserrat-Bold")),
//          Text("Lorem Ipsem",
//              style: TextStyle(fontSize: 16.0, fontFamily: "Montserrat-Medium"))
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
//              _buildTitle(height),
//              Align(
//                alignment: Alignment.bottomCenter,
//                child: SizedBox(
//                  height: height * .6,
//                  child: ListView.builder(
//                    itemCount: images.length,
//                    scrollDirection: Axis.horizontal,
//                    physics: BouncingScrollPhysics(),
//                    itemBuilder: (context, index) {
//                      return Padding(
//                        padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
//                        child: SizedBox(
//                          width: 200.0,
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
//                                    height: 199.0,
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
//      bottomNavigationBar: BottomNavigationBar(
//        selectedItemColor: Colors.black,
//        onTap: (index) {
//          setState(() {
//            _currentIndex = index;
//          });
//        },
//        currentIndex: _currentIndex,
//        items: [
//          BottomNavigationBarItem(
//              icon: Icon(Icons.panorama_horizontal),
//              title: Container(
//                height: 0.0,
//              )),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.bookmark_border),
//              title: Container(
//                height: 0.0,
//              ))
//        ],
//      ),
//      floatingActionButton: Container(
//        width: 65.0,
//        height: 65.0,
//        decoration: BoxDecoration(
//            color: Color(0xFFfa7b58),
//            shape: BoxShape.circle,
//            boxShadow: [
//              BoxShadow(
//                  color: Color(0xFFf78a6c).withOpacity(.6),
//                  offset: Offset(0.0, 10.0),
//                  blurRadius: 10.0)
//            ]),
//        child: RawMaterialButton(
//          shape: CircleBorder(),
//          child: Icon(
//            Icons.add,
//            size: 35.0,
//            color: Colors.white,
//          ),
//          onPressed: () {},
//        ),
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//    );
//  }
//}
//
//
////import 'package:flutter/material.dart';
////import 'package:flutter_screenutil/flutter_screenutil.dart';
////
////import '../product list.dart';
////
////class ProductCard extends StatelessWidget {
////  List<Widget> product() {
////    List<Widget> productList = new List();
////
////    for (int i = 0; i < 3; i++) {
////      var productItem = Padding(
////        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
////        child: Container(
////          height: 220.0,
////          width: 135.0,
////          decoration: BoxDecoration(
////              borderRadius: BorderRadius.circular(20.0),
////              color: Colors.white,
////              boxShadow: [
////                BoxShadow(
////                    color: Colors.black12,
////                    blurRadius: 10.0,
////                    offset: Offset(0.0, 10.0))
////              ]),
////          child: Column(
////            children: <Widget>[
////              ClipRRect(
////                borderRadius: BorderRadius.only(
////                    topLeft: Radius.circular(20.0),
////                    topRight: Radius.circular(20.0)),
////                child: Image.asset(
////                  images[i],
////                  width: double.infinity,
////                  height: 130.0,
////                  fit: BoxFit.cover,
////                ),
////              ),
////              Padding(
////                padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
////                child: Text(titles[i],
////                    textAlign: TextAlign.center,
////                    style: TextStyle(
////                        fontSize: 16.0, fontFamily: "SF-Pro-Display-Bold")),
////              ),
//////              Padding(
//////                padding: EdgeInsets.only(top: 3.0),
//////                child: Text(i == 0 ? "Season 2" : ""),
//////              )
////            ],
////          ),
////        ),
////      );
////      productList.add(productItem);
////    }
////    return productList;
////  }
////
////  @override
////  Widget build(BuildContext context) {
////    return Container(
////      width: ScreenUtil().setWidth(642),
////      child: Container(
////        height: 250.0,
////        child: ListView(
////          scrollDirection: Axis.horizontal,
////          children: product(),
////        ),
////
//////      Stack(
//////        children: <Widget>[
//////          Align(
//////            alignment: Alignment.bottomCenter,
//////            child: Padding(
//////              padding: EdgeInsets.only(bottom: ScreenUtil().setWidth(40)),
//////              child: Container(
//////                width: ScreenUtil().setWidth(620),
//////                height: ScreenUtil().setHeight(990),
//////                decoration: BoxDecoration(
//////                  gradient: LinearGradient(
//////                      colors: [Colors.pinkAccent, Colors.pink],
//////                      begin: Alignment.topRight,
//////                      end: Alignment.bottomLeft),
//////                  boxShadow: [
//////                    BoxShadow(
//////                      color: Colors.black12,
//////                      offset: Offset(0,8),
//////                      blurRadius: 8,
//////                    )
//////                  ],
//////                  borderRadius: BorderRadius.circular(30)
//////                ),
//////              ),
//////            ),
//////          )
//////        ],
//////      ),
////      ),
////    );
////  }
////}
