import 'package:flutter/material.dart';
import 'package:quiz/app/ui/atoms/random_color_box.dart';

class BottomDialog extends StatelessWidget {
  const BottomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: 500),
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.easeIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value as double,
          child: Transform.translate(
            offset: Offset(0, 200 - (value) * 200),
            child: child,
          ),
        );
      },
      child: RandomColorBox(),
    );
  }
}
