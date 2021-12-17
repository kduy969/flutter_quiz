import 'package:flutter/material.dart';

class AppNavigation {
  static final GlobalKey<NavigatorState>? navigatorKey = GlobalKey(debugLabel: 'NavigationKey');
  static NavigatorState? getNavigator(){
    return navigatorKey?.currentState;
  }
}
