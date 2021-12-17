import 'package:flutter/material.dart';
import 'package:quiz/log/index.dart';

import '../fadein.dart';
import 'popup_controller.dart';

class Popup extends StatefulWidget {
  final Widget Function() popupBuilder;
  final Widget child;
  const Popup({Key? key, required this.popupBuilder, required this.child})
      : super(key: key);

  @override
  PopupState createState() => PopupState();
}

class PopupState extends State<Popup> {
  late final PopupController popupCT;
  @override
  void initState() {
    setUpStateListener();
    super.initState();
  }

  @override
  void dispose() {
    popupCT.dispose();
    super.dispose();
  }

  void setUpStateListener() {
    popupCT = PopupController();
    popupCT.addListener(() {
      if (popupCT.showing) {
        _doShow();
      } else {
        _doHide();
      }
    });
  }

  OverlayEntry? overlayEntry;

  void _doShow() async {
    overlayEntry = OverlayEntry(builder: (buildCtx) {
      logger.d(["Rebuild overlay"]);
      return Positioned(
        child: FadeIn(
          child: widget.popupBuilder(),
          durationMS: 250,
        ),
        left: 0,
        right: 0,
        bottom: 0,
        height: 200,
      );
    });
    Overlay.of(context)?.insert(overlayEntry!);
  }

  void _doHide() {
    overlayEntry?.remove();
  }

  void rebuildOverlay() {
    if (popupCT.showing) {
      //logger.d(["MARK NEED BUILD"]);
      overlayEntry?.markNeedsBuild();
    }
  }

  @override
  void didChangeDependencies() {
    // logger.d(["DID CHANGE", popupState.showing]);
    // if (popupState.showing) {
    //   logger.d(["MARK NEED BUILD"]);
    //   overlayEntry?.markNeedsBuild();
    // }
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Popup oldWidget) {
    // TODO: implement didUpdateWidget
    // logger.d(["DID UPDATE", popupState.showing]);
    // if (popupState.showing) {
    //   logger.d(["MARK NEED BUILD"]);
    //   overlayEntry?.markNeedsBuild();
    // }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    logger.d(["BUILD", popupCT.showing]);
    return InkWell(
      onLongPress: popupCT.toggle,
      child: widget.child,
    );
  }
}
