import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  final Widget child;
  final int durationMS;
  const FadeIn({Key? key, required this.child, required this.durationMS})
      : super(key: key);

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  late final Animation<double> _opacityAnim;
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.durationMS),
    );

    _opacityAnim = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
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
      opacity: _opacityAnim,
      child: widget.child,
    );
  }
}
