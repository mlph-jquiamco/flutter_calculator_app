import 'package:flutter/material.dart';

// Change notifier cloass for increment
class HomeChangeNotifier extends ChangeNotifier {
  int increment = 0;

  Future<void> reloadState() async {
    increment++;
    notifyListeners();
  }
}
