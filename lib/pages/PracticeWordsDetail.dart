import 'package:flutter/material.dart';
import 'package:funwaylearning/models/PracticeWords.dart';
import 'package:funwaylearning/styleguide.dart';
class PracticeWordsDetail extends StatefulWidget {
  final Practice practice;

  const PracticeWordsDetail({Key key, this.practice}) : super(key: key);
  @override
  _PracticeWordsDetailState createState() => _PracticeWordsDetailState();
}

class _PracticeWordsDetailState extends State<PracticeWordsDetail> {
  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(widget.practice.color),
        elevation: 0,

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[

                    Container(
                      height: data.size.height/6,
                      width: data.size.width/1,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.practice.heading1,style: AppTheme.heading1,),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(widget.practice.color),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(300),bottomLeft: Radius.circular(300),topLeft:Radius.circular(0),topRight: Radius.circular(0), ),
                      ),
                    ),
                    Align(alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90,left: 0),
                        child: Image.asset(widget.practice.imagePath,
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Align(alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  padding: EdgeInsets.all(16),
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20), ),
                    color: Color(0xFFF2CF5B),

                  ) ,

                  child: Text(widget.practice.heading1,style: AppTheme.subHeading3,),
                ),
              ),
            ],
          ),
          Container(
            height: 420,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: widget.practice.wordsList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Material(
                    elevation: 1,
                    child: Center(
                      child: Container(
                        child: Text(widget.practice.wordsList[index],style: AppTheme.wordListHead,),

                      ),
                    ),
                  ),
                );
              },
            ),
          ),






        ],
      ),
    );
  }
}
