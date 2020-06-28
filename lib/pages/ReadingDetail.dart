import 'package:flutter/material.dart';
import 'package:funwaylearning/models/character.dart';

import '../styleguide.dart';
class ReadingDetail extends StatefulWidget {
  final Character character;

  const ReadingDetail({Key key, this.character}) : super(key: key);
  @override
  _ReadingDetailState createState() => _ReadingDetailState();
}

class _ReadingDetailState extends State<ReadingDetail> {
  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[

                    Container(
                      height: data.size.height/3.5,
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
                        padding: const EdgeInsets.only(top: 140,left: 20),
                        child: Image.asset(widget.character.imagePath,
                          height: 250,
                          width: 250,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),

            ],
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
