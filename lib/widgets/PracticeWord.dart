import 'package:flutter/material.dart';
import 'package:funwaylearning/models/PracticeWords.dart';
import 'package:funwaylearning/pages/PracticeWordsDetail.dart';




import '../styleguide.dart';
class PracticeWords extends StatefulWidget {
  @override
  _PracticeWordsState createState() => _PracticeWordsState();
}

class _PracticeWordsState extends State<PracticeWords> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Common Practice words", style: AppTheme.subHeading),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            height: 200,
            color: Color(0xFFF6F2F2),

            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: practices.length,
                itemBuilder: (BuildContext context, int index) {
                  Practice practice = practices[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PracticeWordsDetail(
                          practice: practice,
                        ),
                      ),
                    ),
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
                                        height: 100,
                                        width: 300,
                                        child: Center(
                                            child: Text(
                                              practice.heading1,
                                              style: AppTheme.subHeading1,
                                            )),
                                        decoration: BoxDecoration(
                                            color: Color(practice.color),
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset(
                                    practice.imagePath,
                                    height: 120,
                                    width: 120,
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
