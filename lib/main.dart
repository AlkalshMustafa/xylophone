import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

final player = AudioCache();

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  void onPressed(int n) {
    player.play('note$n.wav');
  }

  Expanded buildKey({int soundNo, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          onPressed(soundNo);
        },
        color: color,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 5),
              buildKey(soundNo: 1, color: Colors.red),
              SizedBox(height: 5),
              buildKey(soundNo: 2, color: Colors.deepOrange[300]),
              SizedBox(height: 5),
              buildKey(soundNo: 3, color: Colors.yellow[600]),
              SizedBox(height: 5),
              buildKey(soundNo: 4, color: Colors.lightGreenAccent),
              SizedBox(height: 5),
              buildKey(soundNo: 5, color: Colors.green[800]),
              SizedBox(height: 5),
              buildKey(soundNo: 6, color: Colors.blue),
              SizedBox(height: 5),
              buildKey(soundNo: 7, color: Colors.purple),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

// old version
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.black,
//        body: SafeArea(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    onPressed(1);
//                  },
//                  color: Colors.red,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(2);
//                  },
//                  color: Colors.deepOrange[300],
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(3);
//                  },
//                  color: Colors.yellow[600],
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(4);
//                  },
//                  color: Colors.lightGreenAccent,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(5);
//                  },
//                  color: Colors.green[800],
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(6);
//                  },
//                  color: Colors.blue,
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  onPressed: () {
//                    print('Pressed');
//                    onPressed(7);
//                  },
//                  color: Colors.purple,
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
