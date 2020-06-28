import 'dart:async';

import 'package:flutter/material.dart';
import 'package:funwaylearning/pages/Dashboard.dart';

import '../styleguide.dart';
import 'homepage.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => DashBoard(),
      ));
    });
  }
  Widget build(BuildContext context) {
    final data= MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
              Column
                (mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: data.size.height/2.6,
                    width: data.size.width/1,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "Funway ", style: AppTheme.heading),

                              TextSpan(text: "learning", style: AppTheme.heading),
                            ],
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),bottomLeft: Radius.circular(200),topLeft:Radius.circular(0),topRight: Radius.circular(0), ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 60,),
              Center(child: Text("Home Learning App ",style: AppTheme.display1,)),
              Center(child: Text("for Kids ",style: AppTheme.display2,)),
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.only(top: 45),
                alignment: Alignment.bottomCenter,

                child: Image.asset("assets/images/covid-kids2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
