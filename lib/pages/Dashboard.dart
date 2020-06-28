import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:funwaylearning/Screens/home_screen.dart';
import 'package:funwaylearning/models/dashboard.dart';
import 'package:funwaylearning/pages/GamePage.dart';

import 'package:funwaylearning/pages/worksheet.dart';
import 'package:funwaylearning/pages/yoga.dart';
import 'package:funwaylearning/pages/homepage.dart';


import '../styleguide.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: Text("funway learning",style: AppTheme.page_heading1),
        centerTitle: true,
      ),


      body: Column(
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
            height: 220,
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage("assets/images/slider1.png"),
                AssetImage("assets/images/slider2.png"),
                AssetImage("assets/images/slider4.png"),
                AssetImage("assets/images/slider3.png"),
              ],
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 4,
              indicatorBgPadding: 0,
              overlayShadowColors: Colors.white,
              showIndicator: false,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                    builder: (_)=>Home_Page()
                  )),
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      child: Center(
                                          child: Text(
                                            "learning",
                                            style: AppTheme.subHeading1,
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>GamePage()
                  )),
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      child: Center(
                                          child: Text(
                                            "Games",
                                            style: AppTheme.subHeading1,
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>HomeScreen()
                  )),
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      child: Center(
                                          child: Text(
                                            " Rhymes",
                                            style: AppTheme.subHeading1,
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>YogaScreen()
                  )),
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      child: Center(
                                          child: Text(
                                            "yoga",
                                            style: AppTheme.subHeading1,
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>worksheet()
                  )),
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Stack(
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      height: 70,
                                      width: 300,
                                      child: Center(
                                          child: Text(
                                            "learning resources",
                                            style: AppTheme.subHeading1,
                                          )),
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius: BorderRadius.circular(100)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 30,)

              ],

            )
          )

        ],
      ),

    );
  }
}
