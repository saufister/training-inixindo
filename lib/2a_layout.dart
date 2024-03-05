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
      home: LatihanLayoutPage(),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)),
    );
  }
}

class LatihanLayoutPage extends StatelessWidget {
  const LatihanLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("INIX APP"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Area(height: 100,),
            Area(height: 100,),
            Area(height:100),
          ],
        ),
      ),
    );
  }
}

class Area extends StatelessWidget {
  final double height;
  const Area({super.key,required this.height,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.red,
      ),
    );
  }
}

