import 'package:flutter/material.dart';
import 'package:funwaylearning/pages/AnimalGame.dart';
import 'package:funwaylearning/pages/ColorGame.dart';
import 'package:funwaylearning/pages/Number.dart';
import 'package:funwaylearning/pages/mixedGame.dart';

import '../styleguide.dart';

class GamePage extends StatefulWidget {


  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xFFF2CF5B),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Text("Games",style: AppTheme.page_heading1),
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          children: <Widget>[

            Expanded(
              child: Container(

                color: Color(0xFFF2CF5B),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute (
                          builder:(context)=>Homepage()

                      )),
                      child: Container(
                          child: Align(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 180,
                                    width: 300,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 120),
                                      child: Center(
                                          child: Text(
                                        "Mixed Game",
                                        style: AppTheme.subHeading2,
                                      )),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, bottom: 40),
                                  child: Image.asset(
                                    "assets/images/matchingcards.png",
                                    height: 180,
                                    width: 180,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute (
                          builder:(context)=>NumberGame()

                      )),
                      child: Container(
                          child: Align(
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 180,
                                        width: 300,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 120),
                                          child: Center(
                                              child: Text(
                                                "Number Game",
                                                style: AppTheme.subHeading2,
                                              )),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left: 25, bottom: 40),
                                      child: Image.asset(
                                        "assets/images/num_card.png",
                                        height: 180,
                                        width: 180,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute (
                          builder:(context)=>ColorGame()

                      )),
                      child: Container(
                          child: Align(
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 180,
                                        width: 300,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 120),
                                          child: Center(
                                              child: Text(
                                                "Color Game",
                                                style: AppTheme.subHeading2,
                                              )),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left: 25, bottom: 40),
                                      child: Image.asset(
                                        "assets/images/color_card.png",
                                        height: 180,
                                        width: 180,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute (
                          builder:(context)=>AnimalGame()

                      )),
                      child: Container(
                          child: Align(
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 180,
                                        width: 300,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 120),
                                          child: Center(
                                              child: Text(
                                                "Animal Game",
                                                style: AppTheme.subHeading2,
                                              )),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(left: 25, bottom: 40),
                                      child: Image.asset(
                                        "assets/images/horse_card.png",
                                        height: 180,
                                        width: 180,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
