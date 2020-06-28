import 'package:flutter/material.dart';
import 'package:funwaylearning/models/yoga.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_tts/flutter_tts.dart';


import '../styleguide.dart';



class YogaScreen extends StatefulWidget {

  @override
  _YogaScreenState createState() => _YogaScreenState();
}

class _YogaScreenState extends State<YogaScreen> {
  PageController controller = PageController();
  final FlutterTts flutterTts = FlutterTts();

  var currentPageValue = 0.0;

  int stepNumber = 1;

  @override
  speak(String n) async {
    await flutterTts.speak(n);
    flutterTts.setLanguage("en-GB");
    flutterTts.setPitch(50);
    flutterTts.setSpeechRate(1);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text("funway learning",style: AppTheme.page_heading1),
        centerTitle: true,
      ),

      body: PageView.builder(
        controller: controller,
        itemBuilder: (context, position) {

          return Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30.0,) ,
                Image.asset(yoga_poses[position].imageUrl),
                SizedBox(height: 30.0,) ,
                FlatButton(
                  onPressed: ()=>speak('${yoga_poses[position].instruction}'),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[300],
                        borderRadius: BorderRadius.circular(20.0),

                      ),
                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(yoga_poses[position].instruction, style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0
                            ),),
                          ),
                        ],
                      )),
                )
              ],
            ),

          );
        },
        itemCount: yoga_poses.length,
      ),
    );
  }
}