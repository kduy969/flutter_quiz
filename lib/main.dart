import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz/app/navigation.dart';
import 'package:quiz/app/root.dart';
import 'package:quiz/app/theme/index.dart';
import 'package:quiz/app/routes.dart';
import 'package:quiz/app/ui/templates/form/repaint_test.dart';

void main() {
  //debugPaintLayerBordersEnabled = true;
  //debugProfilePaintsEnabled = true;

  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //checkerboardRasterCacheImages: true,
      routes: appRoutes,
      // home: const RepaintTest(),
      theme: appTheme,
      navigatorKey: AppNavigation.navigatorKey,
    );
  }
}
