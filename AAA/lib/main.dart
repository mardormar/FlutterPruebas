import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Esto es el titulo de la AppBar"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle_sharp),
              color: Colors.pink,
              iconSize: 40,
              onPressed: add,
            ),
            IconButton(
              icon: Icon(Icons.settings_accessibility),
              color: Colors.amber,
              iconSize: 40,
              onPressed: add,
            ),
            IconButton(
              icon: Icon(Icons.message_rounded),
              color: Colors.deepPurple,
              iconSize: 40,
              onPressed: add,
            ),
          ],
        ),
        body: Center(
          child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                print("button clicked");
              },
          ),
        ),
        floatingActionButton: FloatingActionButton (
          child: Icon(Icons.add),
          onPressed: add,
        ),
      ),
    );
  }

  void add() {
    print("toolbar button clicked");
  }
}