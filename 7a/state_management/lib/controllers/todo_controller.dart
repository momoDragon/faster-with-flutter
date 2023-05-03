import 'package:flutter/material.dart';

class TodoController extends ChangeNotifier {
  final List<String> _items = [];

  void addTodo(String todo) {
    _items.add(todo);
    notifyListeners();
  }

  void removeLast() {
    if (_items.isNotEmpty) {
      _items.removeLast();
      notifyListeners();
    }
  }

  get items => _items.toList();
}
