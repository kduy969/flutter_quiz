import 'package:flutter/material.dart';
import 'package:quiz/app/root.dart';
import 'package:quiz/app/ui/pages/home/index.dart';
import 'package:quiz/app/ui/pages/login/index.dart';
import 'package:quiz/app/ui/pages/pokedex/pokedex.dart';
import 'package:quiz/app/ui/pages/test/index.dart';
import 'package:quiz/app/ui/templates/form/form.dart';

var appRoutes = {
  '/': (_) => const ScreenPokedex(),
  '/Error': (_) => const Center(child: Text('Error')),
  '/Home': (_) => const MyForm(),
  '/Login': (_) => const ScreenLogin(),
};
