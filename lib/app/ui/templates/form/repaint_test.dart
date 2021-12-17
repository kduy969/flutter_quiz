import 'package:flutter/material.dart';

class RepaintTest extends StatelessWidget {
  const RepaintTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: RepaintBoundary(child: TextField()),
        ),
      ),
    );
  }
}
