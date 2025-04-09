import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];
  double _totalPrice = 0.0;

  List<Map<String, dynamic>> get items => _items;
  double get totalPrice => _totalPrice;
  int get itemCount => _items.length;

  void addItem(String name, double price, Color color) {
    _items.add({
      'name': name,
      'price': price,
      'color': color,
    });
    _totalPrice += price;
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    _totalPrice = 0.0;
    notifyListeners();
  }
}