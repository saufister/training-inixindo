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
  Size? widgetSize;

  @override
  Widget build(BuildContext context) {
    widgetSize = MediaQuery.of(context).size;
    print(widgetSize!.height.toString() + ", " + widgetSize!.width.toString());

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight, //default FlexFit.loose
              flex: 2, // 2 : (2 + 1 + 1) = 0,5 layar
              child: Area(100,
                  "https://www.inixindo.id/wp-content/uploads/2020/08/Web-Foto-UMN.jpg"),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Area(150,
                  "https://www.inixindo.id/wp-content/uploads/2020/08/UNMA.jpg"),
            ),
            Flexible(
              fit: FlexFit.loose, // loose, child tidak terjadi straching
              flex: 1,
              child: Area(100,
                  "https://www.inixindo.id/wp-content/uploads/2020/08/WhatsApp-Image-2019-10-02-at-14.43.32.jpeg"),
            ),
            Expanded(
              flex: 1,
              child: Area(100,
                  "https://www.inixindo.id/wp-content/uploads/2020/08/UNMA.jpg"),
            ),
            Spacer(flex: 1,), // area kosong dengan flex
            Area(100, "https://www.inixindo.id/wp-content/uploads/2020/08/WhatsApp-Image-2019-10-02-at-14.43.32.jpeg"),
            const SizedBox(width: 10,) ,// area kosong dengan logical size
            Image.asset("assets/Chulak_from_space.webp", width: 50,)
          ],
        ),
      ),
    );
  }
}

class Area extends StatelessWidget {
  double height;
  String urlImage;

  Area(this.height, this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
      width: 100,
      height: height,
      child: Image.network(
        urlImage,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}


