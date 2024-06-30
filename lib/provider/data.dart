import 'package:flutter/material.dart';

class Data with ChangeNotifier {
  List prodectselected = [];
  double prixe = 0;
  // fonction to add product in cart shop
  add(shoes) {
    prodectselected.add(shoes);
    prixe += shoes.prix;
    notifyListeners();
  }

  // fonction for remove product in cart shop
  remove(shoes) {
    prodectselected.remove(shoes);
    prixe -= shoes.prix;
    notifyListeners();
  }
}
