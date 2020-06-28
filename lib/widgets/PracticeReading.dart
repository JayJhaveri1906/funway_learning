import 'package:flutter/material.dart';
import 'package:funwaylearning/models/games.dart';


import '../styleguide.dart';
class PracticeReading extends StatefulWidget {
  @override
  _PracticeReadingState createState() => _PracticeReadingState();
}

class _PracticeReadingState extends State<PracticeReading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Matching Games", style: AppTheme.subHeading),
            ),
          ),

          InkWell(
            onTap: () {},

            child: Container(
              height: 290,
              color: Color(0xFFF25B5B,),


              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: games.length,
                  itemBuilder: (BuildContext context, int index) {
                    Game game = games[index];
                    return Container(
                        child: Align(
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 160,
                                      width: 200,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 100),
                                        child: Center(
                                            child: Text(
                                              game.heading,
                                              style: AppTheme.subHeading2,

                                            )),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 55,top: 60),
                                    child: Image.asset(
                                      game.imagePath,
                                      height: 130,
                                      width: 130,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
