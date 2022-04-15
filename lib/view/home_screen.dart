import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ボタンをひたすら連打ー'),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: const [
                Expanded(flex: 2, child: DrawerHeader(child: Text('設定画面'))),
                Expanded(flex: 3, child: Text('写真')),
                Expanded(flex: 1, child: Text('音の変更')),
                Expanded(flex: 1, child: Text('これまでの累計タップ数')),
                Expanded(flex: 1, child: Text('シェアする')),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Expanded(
                  flex: 1,
                  child: Text('タップ数：\n'
                      'あと：回で消えそうかも,'),
                ),
              ),
              Image.network(
                  'https://3.bp.blogspot.com/-ug0NOvztbBc/UV1JEk1n3eI/AAAAAAAAPSE/8G6UXvctb6I/s400/door.png'),
              Center(
                child: Expanded(
                  child: NeumorphicButton(
                      onPressed: () {},
                      child: const Text('押してね'),
                      style: const NeumorphicStyle(color: Colors.blue)),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
