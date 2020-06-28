import 'package:flutter/material.dart';

class Game {
   String heading;
   String imagePath;
   int color;
   String pagePath;

  Game( {this.heading, this.imagePath,this.color,this.pagePath});
}


List games = [
  Game(
    heading: "Animals",
      imagePath: "assets/images/lion.png",
      color:0xFF0C3853,
    pagePath:'AnimalGame',
  ),
  Game(
    heading: "Colors",
    imagePath: "assets/images/lion.png",
    color:0xFF5B89F2,
    pagePath:'ColorGame',
  ),
  Game(
    heading: "Transport",
    imagePath: "assets/images/lion.png",
    color:0xFF5B89F2,
    pagePath:'TransGame',
  ),
  Game(
    heading: "Mixed",
    imagePath: "assets/images/lion.png",
    color:0xFF5B89F2,
    pagePath:'MixedGame',
  ),
  Game(
    heading: "Numbers",
    imagePath: "assets/images/lion.png",
    color:0xFF5B89F2,
    pagePath:'NumberGame',
  ),





];
