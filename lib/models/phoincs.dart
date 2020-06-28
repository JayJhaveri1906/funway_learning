
class Phonic {
  String sampleImageUrl;
  String sampleWord;
  String name;
  String sound;
  int color;
  List<Word> words;

  Phonic({
    this.sound,
    this.sampleImageUrl,
    this.sampleWord,
    this.name,
    this.color,
    this.words,
  });
}
class Word{
  String name;
  String imageUrl;
  Word({this.name,this.imageUrl});
}



List<Phonic> phonics = [
 Phonic(
   name: "s",
   sampleWord: "sun",
   color: 0xFF5B89F2,
   sampleImageUrl: "assets/images/sun.png"
     ,
   words: [
     Word(
       name: "sun",imageUrl: "assets/images/sun.png"
     ),
     Word(
         name: "seal",imageUrl: "assets/images/seal.png"
     ),
     Word(
         name: "soap",imageUrl: "assets/images/soap.png"
     ),


   ]

 ),
  Phonic(
      name: "p",
      sampleWord: "pig",
      color: 0xFFF2CF5B,
      sampleImageUrl: "assets/images/pig.png",
      words: [
        Word(
            name: "pig",imageUrl: "assets/images/pig.png"
        ),
        Word(
            name: "pen",imageUrl: "assets/images/pen.png"
        ),
        Word(
            name: "pot",imageUrl: "assets/images/pot.png"
        )
      ]

  ),
  Phonic(
      name: "qu",
      sampleWord: "queen",
      color: 0xFFF25B5B,
      sampleImageUrl: "assets/images/queen.png",
      words: [
        Word(
            name: "queen",imageUrl: "assets/images/queen.png"
        ),
        Word(
            name: "quick",imageUrl: "assets/images/quick.png"
        ),
        Word(
            name: "quack",imageUrl: "assets/images/quilt.png"
        )
      ]

  ),



];









