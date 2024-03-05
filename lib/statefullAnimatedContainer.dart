// suggest : CTRL + Space
import 'package:flutter/material.dart'; // base widget UI Android

// import 'package:flutter/cupertino.dart'; // base Widget UI iOS
void main() {
  // runApp(MaterialApp(home: Scaffold(),));
  // runApp(CupertinoApp(home: CupertinoPageScaffold(child: Container(),),));
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationContainer(),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
    );
  }
}

class AnimationContainer extends StatelessWidget {
  const AnimationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          child: Text('ini adalah text'),
        ),
      ),
    );
  }
}


