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
      home: _FirstPage(),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
    );
  }
}

class _FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("INIX APP"),
      ),
      body: Center(
        child: Text("WELCOME"),
      ),
    );
  }
}
