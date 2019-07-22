import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
//import 'ball.dart';

void main() {
  runApp(
    MaterialApp(
      home: Ball(),
    ),
  );
}


lass Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballRandom = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: 'Roboto',
          ),
        ),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image.asset('images/ball$ballRandom.png'),
                  onPressed: () {
                    setState(() {
                      ballRandom = Random().nextInt(5) + 1;
                      print("Ball Pressed!");
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
