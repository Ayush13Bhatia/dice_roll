import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // AssetImage
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png',
  ];
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);
  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 190),
              child: Text(
                "The sum is: " +
                    (randomIntForDiceOne + randomIntForDiceTwo + 2).toString(),
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/" + imageArray[randomIntForDiceOne],
                    height: 150, width: 150),
                Image.asset("images/" + imageArray[randomIntForDiceTwo],
                    height: 150, width: 150),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeImage,
        child: Icon(Icons.add),
        // Text((randomIntForDiceOne + randomIntForDiceTwo).toString()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
