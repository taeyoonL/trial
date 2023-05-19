import 'package:flutter/material.dart';

class HomeScreen_2 extends StatelessWidget {
  const HomeScreen_2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('안녕 친구들'),
        centerTitle: true,
      ),
      body: Text('만나서 반가워'),
    );
  }
}