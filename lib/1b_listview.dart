import 'package:flutter/material.dart';
import 'dart:math';

class RandomNumberPage extends StatelessWidget {
  final List<String> angka = <String>[];
  final rng = new Random();

  RandomNumberPage() {
    for (var i = 0; i < 20; i++) {
      String angkAcak = rng.nextInt(99).toString();
      angka /*!*/.add(angkAcak); // tanda (!) memaksakan objek untuk tidak null
      print(angkAcak);
    }
  }

  Widget tampilanBaris(angka) {
    return Card(
      child: ListTile(
        title: Text(angka),
        subtitle: Text("Baris Data"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Random Number"),
        ),
        body: ListView.builder(
            itemCount: angka.length,
            itemBuilder: (BuildContext _c, int i) {
          return tampilanBaris(angka[i]);
        }));
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomNumberPage(),
    );
  }
}

void main() {
  runApp(App());
}
