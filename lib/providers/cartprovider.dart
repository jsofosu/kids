import 'package:flutter/material.dart';
import 'package:kids/model/fit.dart';
import 'package:provider/provider.dart';

// class CartInfo {
//   final String itemname;
//   final String itemimage;
//   final String itemsize;
//   double itemprice;
//   double itemtotal;
//   int itemquantity;
//   CartInfo(
//       {this.itemname,
//       this.itemimage,
//       this.itemsize,
//       this.itemprice,
//       this.itemtotal,
//       this.itemquantity = 1});
// }

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
}
