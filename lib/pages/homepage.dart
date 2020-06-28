import 'package:flutter/material.dart';

import 'package:funwaylearning/widgets/PracticeWord.dart';
import 'package:funwaylearning/widgets/highwords.dart';
import 'package:funwaylearning/pages/GamePage.dart';
import 'package:funwaylearning/widgets/soundlist.dart';

import '../styleguide.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0,
        title: Text("funway learning",style: AppTheme.page_heading1),
        centerTitle: true,
      ),

      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                SoundList(),
                HighWords(),
                PracticeWords(),

         //       PracticeReading(),


              ],
            )
          ],
        ),
      ),

    );
  }
}
