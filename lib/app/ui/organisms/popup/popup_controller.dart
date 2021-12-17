import 'package:flutter/foundation.dart';

class PopupController extends ChangeNotifier {
  bool showing = false;

  void toggle() {
    showing = !showing;
    notifyListeners();
  }

  void show() {
    showing = true;
    notifyListeners();
  }

  void hide() {
    showing = false;
    notifyListeners();
  }
}
