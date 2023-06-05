import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _count=0;
  int get count => _count;
  void Incremet(){
    _count++;
    notifyListeners();
  }
  void Decrement(){
    _count--;
    notifyListeners();
  }
  void Clear(){
_count=0;
notifyListeners();
  }

}