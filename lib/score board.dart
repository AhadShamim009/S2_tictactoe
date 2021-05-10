import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScoreBoard extends StatelessWidget {
  static const TextStyling =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var score1 ;
  var score2 ;
  ScoreBoard(this.score1,this.score2);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*.5,
      height: MediaQuery.of(context).size.height * .3,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: <Widget>[

                  Text(
                    'Player 1',
                    style: TextStyling,
                  ),
                  //Score
                  Text(score1.toString(),style: TextStyling,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('computer player', style: TextStyling),
                  //Score
                  Text(score2.toString(),style: TextStyling,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
