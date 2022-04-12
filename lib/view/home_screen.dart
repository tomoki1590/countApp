import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ボタンをひたすら連打ー'),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                DrawerHeader(child: Text('設定画面')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('写真'),
                ),
                Text('音の変更'),
                Text('これまでの累計タップ数'),
                Text('シェアする'),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text('タップ数：'),
              ),
              Container(
                child: Text('あと：回で消えそうかも'),
              ),
              Image.network(
                  'https://3.bp.blogspot.com/-ug0NOvztbBc/UV1JEk1n3eI/AAAAAAAAPSE/8G6UXvctb6I/s400/door.png'),
              Center(
                child: SizedBox(
                    height: 100,
                    width: 200,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('押してね'))),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
