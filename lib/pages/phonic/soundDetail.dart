import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:funwaylearning/models/phoincs.dart';

import '../../styleguide.dart';
class SoundDetail extends StatefulWidget {
  final Phonic phonic;

  const SoundDetail({Key key, this.phonic}) : super(key: key);
  @override
  _SoundDetailState createState() => _SoundDetailState();
}

class _SoundDetailState extends State<SoundDetail> {
  final FlutterTts flutterTts = FlutterTts();
  List<Word> words = new List();
  List<Phonic> phonics=new List();

  @override
  speak(String n) async {
    await flutterTts.speak(n);
    flutterTts.setLanguage("en-GB");
    flutterTts.setPitch(50);
    flutterTts.setSpeechRate(1);
  }
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(widget.phonic.color),
      appBar: AppBar(
        backgroundColor: Color(widget.phonic.color),
        elevation: 0,

      ),


      body:ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50,bottom: 40,top: 10),
            child: InkWell(
              onTap: (){
                final player = AudioCache();
                player.play('s.mpeg');
              },
              child: Container( height: 160,
                  width: screenWidth,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Text(widget.phonic.name,style: TextStyle(
                          fontFamily: 'WorkSans-Regular.ttf',
                          color:Color(widget.phonic.color),

                          fontWeight: FontWeight.bold,
                          fontSize: 150,
                          height: 0.8,
                        ),
                        ),
                      ),
                      Align(alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10,top:10),
                            child: Image.asset("assets/images/speak1.png",height: 30,width: 30,),
                          )),


                    ],
                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            height: screenHeight * 0.8,
            width: screenWidth * 1,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30), ),
              color: Color(0xFFFFE18F),
            ),

            child: GridView.builder(
              shrinkWrap:true,

              scrollDirection: Axis.vertical,

              itemCount: widget.phonic.words.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final Name =widget.phonic.words[index].name;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: FlatButton(
                    onPressed
                        : ()=>speak('${widget.phonic.words[index].name}'),
                    child: Container(


                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20),
                        color: Colors.white,
                      ),


                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Align( alignment : Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/speak1.png",height: 15,width: 15,),
                                  )),
                              Container(
                                height: 100,
                                width: 300,
                                child: Center(
                                  child:Image.asset('${widget.phonic.words[index].imageUrl}',height: 80,width: 80,),

                                ),

                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(20)
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 110,),
                                child: Center(child: Text('${widget.phonic.words[index].name}',style: AppTheme.sampleWord1,)),
                              )

                            ],
                          ),
                        ],
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
