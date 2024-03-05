import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan2_network/pegawai_model.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const PegawaiPage(),
    );
  }
}

class PegawaiPage extends StatelessWidget {
  const PegawaiPage({super.key});
  Future<Pegawai> fetchPegawai()async {
    Uri uri = Uri.parse("http://192.168.7.184:8080/pegawai");
    http.Response res = await http.get(uri);
    if(res.statusCode == 200){
      Map<String,dynamic>? jsons = json.decode(res.body);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pegawai'),
      ),
      body: FutureBuilder(
          future: fetchPegawai(),
          builder: (BuildContext ctx, AsyncSnapshot<dynamic> snap){
            if(snap.hasData){
              inspect(snap.data);
              return Container();
            }else if(snap.hasError){
              return Container();
            }else{
              return CircularProgressIndicator();
            }

          }
      ),
    );
  }
}

