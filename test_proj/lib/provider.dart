import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];
  void add() {
    final last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }

  void remove() {
    final last = numbers.last;
    numbers.remove(last);
    notifyListeners();
  }
}
