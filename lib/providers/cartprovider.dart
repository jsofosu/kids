import 'package:flutter/material.dart';
import 'package:kids/model/fit.dart';
import 'package:provider/provider.dart';

class CartModel extends ChangeNotifier {
  final List<Outline> _cartitems = [];

  List<Outline> get cartitems => _cartitems.toList();

  void add(Outline item) {
    _cartitems.add(item);
    notifyListeners();
  }

  void removeAll() {
    _cartitems.clear();
    notifyListeners();
  }

  void removeitem(Outline item) {
    _cartitems.removeWhere(
      (element) => element == item,
    );
    notifyListeners();
  }

  void increase(Outline item) {
    item.quantity += 1;
    notifyListeners();
  }
}
