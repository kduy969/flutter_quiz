import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
  double opacity = 0.0;


  @override
  void initState() {
    // setState(() {
    //   opacity = 1.0;
    // });
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        opacity = 1.0;
      });
    });

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 250),
      child: Container(
        color: Colors.yellow,
        width: 200,
        height: 200,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Loading'),
          ),
        ),
      ),
    );
  }
}
