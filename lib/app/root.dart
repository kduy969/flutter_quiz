import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz/log/index.dart';
import 'package:quiz/services/auth.dart';

import 'navigation.dart';
import 'routes.dart';
import 'theme/index.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  late final StreamSubscription authSub, firebaseSub;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    try {
      await Firebase.initializeApp();
      final currentUser = AuthService.getCurrentUser();
      logger.d(['Auth currentUser', currentUser]);
      if (currentUser == null) {
        AppNavigation.getNavigator()?.pushReplacementNamed('/Login');
      } else {
        AppNavigation.getNavigator()?.pushReplacementNamed('/Home');
      }
    } catch (e) {
      logger.d(['Auth error', e]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Splash'));
  }
}
