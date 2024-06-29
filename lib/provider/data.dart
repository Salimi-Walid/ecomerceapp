import 'package:flutter/material.dart';

class Data with ChangeNotifier {
  List prodectselected = [];
  add(shoes) {
    prodectselected.add(shoes);
    notifyListeners();
  }
}
