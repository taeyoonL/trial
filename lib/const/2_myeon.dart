import 'package:flutter/material.dart';

class HomeScreen_2 extends StatelessWidget {
  const HomeScreen_2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('second page'),
        centerTitle: true,
      ),
      body: Text('hello_world'),
    );
  }
}
