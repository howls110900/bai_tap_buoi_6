import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp3 extends StatefulWidget {
  const MyApp3({super.key});
  @override
  State<MyApp3> createState() => _AppState();
}

class _AppState extends State<MyApp3> {
  List randomColors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.white,
    Colors.purpleAccent,
    Colors.purple,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.blue,
    Colors.lightGreenAccent
  ];
  int count = 0;
  @override
  void inc() {
    setState((){
      count ++;
      if(count <= 10) count = count;
      else {count = 0 ;
      count ++ ;}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: randomColors[count],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child:
              const Text('Changed Color', style: TextStyle(color: Colors.yellow),),
            )
          ],
        ));
  }
}
