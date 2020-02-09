import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rento/lists.dart';


class ProddcutList extends StatefulWidget {
  @override
  _ProddcutListState createState() => _ProddcutListState();
}

class _ProddcutListState extends State<ProddcutList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: (Icon(Icons.menu, color: Colors.black12)), onPressed: (){}),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: (Icon(Icons.search,color: Colors.black12,)), onPressed: (){})
        ],
      ),
      body: ListView(
        children: <Widget>[
          CarouselSlider(
              height: 300.0,
              items: images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: <Widget>[
                        Container(height: 300.0, color: Colors.transparent),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            height: 300.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage(i),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        Positioned(child: Container(

                        ))
                      ],
                    );
                  },
                );
              }).toList())
        ],
      ),
    );
  }
}
