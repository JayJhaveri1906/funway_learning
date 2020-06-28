

import 'package:flutter/material.dart';
import '../styleguide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

      ),
      home: AnimalGame(),
    );
  }
}

class AnimalGame extends StatefulWidget {
  @override
  _AnimalGameState createState() => _AnimalGameState();
}

class _AnimalGameState extends State<AnimalGame> {
  List<ItemModel> itemsdata = [
    ItemModel(
      name: 'cat',
      value: 'cat',
      imgurl: "assets/images/cat.png",
    ),
    ItemModel(
      name: 'dog',
      value: 'dog',
      imgurl: "assets/images/dog.png",
    ),
    ItemModel(
      name: 'bird',
      value: 'bird',
      imgurl: "assets/images/bird.png",
    ),
    ItemModel(
      name: 'cow',
      value: 'cow',
      imgurl: "assets/images/cow.png",
    ),
    ItemModel(
      name: 'duck',
      value: 'duck',
      imgurl: "assets/images/duck.png",
    ),
    ItemModel(
      name: 'goat',
      value: 'goat',
      imgurl: "assets/images/goat.png",
    ),
    ItemModel(
      name: 'fish',
      value: 'fish',
      imgurl: "assets/images/fish.png",
    ),
    ItemModel(
      name: 'frog',
      value: 'frog',
      imgurl: "assets/images/frog.png",
    ),
    ItemModel(
      name: 'horse',
      value: 'horse',
      imgurl: "assets/images/horse.png",
    ),
    ItemModel(
      name: 'pig',
      value: 'pig',
      imgurl: "assets/images/pig.png",
    ),
    ItemModel(
      name: 'lion',
      value: 'lion',
      imgurl: "assets/images/lion.png",
    ),
  ];
  List<ItemModel> items;
  List<ItemModel> items2;
  int score;
  bool gameOver;
  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = itemsdata.take(4).toList();
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
    itemsdata.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    final data= MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xFF5B89F2),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Animal Matching Game",style: AppTheme.subHeading1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 80,
              width: data.size.width/1,
              color: Color(0xFF5B89F2),
              child: Text("Score: $score",style: AppTheme.heading1
              ),

            ),

            if(!gameOver)
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: items
                          .map((item) => Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Draggable<ItemModel>(
                            data: item,
                            feedback: Image.asset(
                              item.imgurl,
                              height: 100,
                              width: 100,
                            ),
                            childWhenDragging: Image.asset(
                              item.imgurl,
                              height: 100,
                              width: 100,
                              colorBlendMode: BlendMode.softLight,
                            ),
                            child: Image.asset(
                              item.imgurl,
                              height: 100,
                              width: 100,
                            )),
                      ))
                          .toList(),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: items2
                          .map((item) => Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: DragTarget<ItemModel>(
                          onAccept: (recivedItem) {
                            if (item.value == recivedItem.value) {
                              setState(() {
                                items.remove(recivedItem);
                                items2.remove(item);
                                score += 1;
                              });
                            } else {
                              setState(() {
                                score += 0;
                                item.accepting = false;
                              });
                            }
                          },
                          onLeave: (recivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          onWillAccept: (recivedItem) {
                            setState(() {
                              item.accepting = true;
                            });

                            return true;
                          },
                          builder:
                              (context, acceptedItems, rejectedItems) =>
                              Container(
                                alignment: Alignment.center,
                                height: 100,
                                width: 100,
                                color: item.accepting
                                    ? Colors.blue.shade400
                                    : Color(0xFF5B89F2),
                                child: Text(
                                  item.name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            if(gameOver)
              Center(
                  child: Image.network("https://image.freepik.com/free-vector/game-pixel-art-retro-game-style_163786-44.jpg")
              ),
            if (gameOver)
              Container(
                width: 300,
                child: RaisedButton(
                  color: Color(0xFF5B89F2),
                  child: Text("new game"),
                  onPressed: () {
                    initGame();
                    setState(() {});
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ItemModel {
  final String name;
  final String value;
  final String imgurl;
  bool accepting;
  ItemModel({this.name, this.value, this.imgurl, this.accepting = false});
}

