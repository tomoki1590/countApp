import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ボタンをひたすら連打ー'),
        ),
        body: Column(
          children: [
            Container(),
            Container(),
            ElevatedButton(onPressed: () {}, child: Text('押してね'))
          ],
        ),
        bottomSheet: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
