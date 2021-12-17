import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/app/ui/atoms/random_color_box.dart';

class BottomDialogTransition extends StatefulWidget {
  const BottomDialogTransition({Key? key}) : super(key: key);

  @override
  State<BottomDialogTransition> createState() => _BottomDialogTransitionState();
}

class _BottomDialogTransitionState extends State<BottomDialogTransition>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastLinearToSlowEaseIn,
    ));

    _opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    Timer(const Duration(milliseconds: 100), () {
      _controller.forward();
    });
    Timer(const Duration(milliseconds: 1000), () {
      _controller.reverse();
    });
    // WidgetsBinding.instance?.addPostFrameCallback((_) {
    //
    // });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: SlideTransition(
        position: _offsetAnimation,
        child: RandomColorBox(),
      ),
    );
  }
}
