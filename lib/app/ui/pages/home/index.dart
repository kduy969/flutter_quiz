import 'package:flutter/material.dart';
import 'package:quiz/app/ui/organisms/bottom_dialog/bottom_dialog.dart';
import 'package:quiz/app/ui/organisms/bottom_dialog/bottom_dialog_transition.dart';
import 'package:quiz/app/ui/organisms/loading/loading.dart';
import 'package:quiz/log/index.dart';
import 'package:quiz/services/auth.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  showOverlay() async {
    OverlayEntry overlayEntry = OverlayEntry(builder: (buildCtx) {
      return Loading(
        key: UniqueKey(),
      );
      // return Positioned(
      //   child: const Loading(),
      //   left: MediaQuery.of(context).size.width * 0.2,
      //   top: MediaQuery.of(context).size.height * 0.3,
      // );
    });
    Overlay.of(context)?.insert(overlayEntry);
    logger.d(Overlay.of(context));
    await Future.delayed(Duration(seconds: 10));
    overlayEntry.remove();
  }

  showBottomOverlay() async {
    OverlayEntry overlayEntry = OverlayEntry(builder: (buildCtx) {
      return const Positioned(
        child: BottomDialogTransition(),
        // child: BottomDialog(),
        left: 0,
        right: 0,
        bottom: 0,
        height: 200,
      );
    });
    Overlay.of(context)?.insert(overlayEntry);
    logger.d(Overlay.of(context));
    await Future.delayed(Duration(seconds: 2));
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AuthService.signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/Login', (route) => false);
              },
              child: Text('Sign out'),
            ),
            ElevatedButton(
              onPressed: showOverlay,
              child: Text('Show overlay'),
            ),
            ElevatedButton(
              onPressed: showBottomOverlay,
              child: Text('Show bottom overlay'),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
