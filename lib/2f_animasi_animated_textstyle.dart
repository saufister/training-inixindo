
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimationPageState();
  }
}

class AnimationPageState extends State<AnimationPage> {
  Duration duration = Duration(seconds: 2);
  double _fontSize = 20;
  MaterialColor _fontColor = Colors.green;

  Widget textWidget() {
    return Text("INIXINDO JOGJA");
  }

  @override
  void initState() {
    // method untuk inisialisasi variabel
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedDefaultTextStyle(
              child: textWidget(), style: TextStyle(
            fontSize: _fontSize, color: _fontColor,), duration: duration),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _fontSize = 40;
                  _fontColor = Colors.blue;
                });
              },
              child: Text("Click Here!"))
        ]),
      ),
    );
  }
}
