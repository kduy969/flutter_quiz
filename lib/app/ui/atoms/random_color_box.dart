import 'dart:math';

import 'package:flutter/material.dart';

List colors = [
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.amber,
  Colors.cyan,
  Colors.cyanAccent,
  Colors.black,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.teal,
  Colors.tealAccent,
  Colors.pink
];

class RandomColorBox extends StatefulWidget {
  const RandomColorBox({Key? key}) : super(key: key);

  @override
  State<RandomColorBox> createState() => _RandomColorBoxState();
}

class _RandomColorBoxState extends State<RandomColorBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: colors[new Random().nextInt(colors.length - 1)],
      color: colors[0],
      width: 100,
      height: 100,
    );
  }
}
