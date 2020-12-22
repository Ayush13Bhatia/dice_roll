import 'package:flutter/material.dart';

import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage diceimageone;
  AssetImage diceimagetwo;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimageone = one;
      diceimagetwo = two;
    });
  }

  void rollDices() {
    rollDiceone();
    rollDicetwo();
  }

  void rollDiceone() {
    int randomfordiceone = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (randomfordiceone) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
    }
    setState(() {
      diceimageone = newImage;
    });
  }

  void rollDicetwo() {
    int randomfordicetwo = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (randomfordicetwo) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
      default:
    }
    setState(() {
      diceimagetwo = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(image: diceimageone, width: 150.0, height: 150.0),
              Image(image: diceimagetwo, width: 150.0, height: 150.0),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Color(0X28015A),
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text('Roll the dice!'),
                  onPressed: rollDices,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
