import 'package:flutter/material.dart';
import 'product.dart';

class Cart with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
