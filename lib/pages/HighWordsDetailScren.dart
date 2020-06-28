import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funwaylearning/models/character.dart';

import '../styleguide.dart';
class HighWordsDetailScren extends StatefulWidget {
  final Character character;

  const HighWordsDetailScren({Key key, this.character}) : super(key: key);
  @override
  _HighWordsDetailScrenState createState() => _HighWordsDetailScrenState();
}

class _HighWordsDetailScrenState extends State<HighWordsDetailScren> {
  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(widget.character.color),
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
                          child: Text(widget.character.name,style: AppTheme.heading1,),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(widget.character.color),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),bottomLeft: Radius.circular(200),topLeft:Radius.circular(0),topRight: Radius.circular(0), ),
                      ),
                    ),
                    Align(alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90,left: 20),
                        child: Image.asset(widget.character.imagePath,
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

                  child: Text("Hight Frequency Words",style: AppTheme.subHeading3,),
                ),
              ),
            ],
          ),
          Container(
            height: 420,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: widget.character.highWords.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Material(
                    elevation: 1,
                    child: Center(
                      child: Container(
                        child: Text(widget.character.highWords[index],style: AppTheme.wordListHead,),

                      ),
                    ),
                  ),
                );
              },
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

              child: Text("Tricky Words",style: AppTheme.subHeading3,),
            ),
          ),

          Container(
            height: 280,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: widget.character.trickyWords.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Material(
                    elevation: 1,
                    child: Center(
                      child: Container(
                        child: Text(widget.character.trickyWords[index],style: AppTheme.wordListHead,),

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
