import 'package:flutter/material.dart';

class Character {
   String name;
   String imagePath;
   int color;
   List<String> highWords;
   List<String> trickyWords;
   String readName;
   List<String> reading;

  Character( {this.name, this.imagePath,this.color,this.highWords,this.trickyWords,this.reading,this.readName});
}


List characters = [
  Character(
      name: "Level 1",
      imagePath: "assets/images/lion.png",
      color:0xFF5B89F2,
    readName:'Reading Level 1',



    highWords: [
        'a', 'in','on','and','not','put','an','is','can','get','got','as','it','dad','big','up','at','of','had','him',
      'mum','if','off','back','his','but'
      ],
    trickyWords: [
        'the','to','I','no','go'
      ],
    reading: [
      'cat sat on a mat','pig in pen','bat and ball'
    ],


  ),
  Character(
    name: "Level 2",
    imagePath: "assets/images/zebra.png",
    color:0xFFF2CF5B,
    readName:'Reading Level 2',


    highWords: [
      'will', 'that','this','then','them','with','see','for','now','down','look','too'
    ],
    trickyWords: [
      'he','she','we','me','be','was','you','they','all','are','my','her'
    ],
    reading: [
      'u can come','we can go','we will be ok'
    ],


  ),
  Character(
    name: "Level 3",
    imagePath: "assets/images/giraf.png",
    color:0xFFF25B5B,
    readName:'Reading Level 3',


    highWords: [
      'went', 'it\'\s','from','children', 'just','help'
    ],
    trickyWords: [
      'said','have','like','so','do','some','come','were','there','little','one','when',
      'out','what',
    ],
    reading: [
      'u can come to me','this is dall','hello'
    ],


  ),



];
