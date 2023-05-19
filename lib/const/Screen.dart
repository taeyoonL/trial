import 'package:flutter/material.dart';
import 'package:trial/const/1_myeon.dart';
import 'package:trial/const/2_myeon.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller!.addListener(tabListener);
    super.initState();
  }

  void tabListener() {
    setState(() {});
  }

  @override
  void dispose() {
    controller!.removeListener(tabListener); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: renderchildren(),
      ),
      bottomNavigationBar: BNB(),
    );
  }
  List<Widget> renderchildren() {
    return [
      HomeScreen(),
      HomeScreen_2(),
    ];
  }
  BottomNavigationBar BNB(){
    return BottomNavigationBar(
        currentIndex: controller!.index,
        onTap: (int index){
          controller!.animateTo(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility,
              ),
              label: '1면',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.accessibility_new,
              ),
              label: '2면',
          ),
        ],
    );
  }
}



