import 'package:flutter/material.dart';
import 'package:funwaylearning/models/character.dart';
import 'package:funwaylearning/pages/HighWordsDetailScren.dart';

import '../styleguide.dart';

class HighWords extends StatefulWidget {
  @override
  _HighWordsState createState() => _HighWordsState();
}

class _HighWordsState extends State<HighWords> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("High Frequency words", style: AppTheme.subHeading),
            ),
          ),
          
          Container(
            height: 290,


            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: characters.length,
                itemBuilder: (BuildContext context, int index) {
                  Character character = characters[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HighWordsDetailScren(
                          character: character,
                        ),
                      ),
                    ),

                    child: Container(
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
                                  width: 160,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 100),
                                    child: Center(
                                        child: Text(
                                      character.name,
                                      style: AppTheme.subHeading1,
                                    )),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(character.color),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 35,top: 60),
                                child: Image.asset(
                                  character.imagePath,
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
