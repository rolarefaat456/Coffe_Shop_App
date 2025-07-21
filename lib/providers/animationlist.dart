import 'package:flutter/material.dart';

class Animationlist extends ChangeNotifier
{
  // Color color = Colors.white;
  int selected = 0;

  isselected(int index)
  {
    selected = index;
    notifyListeners();
  }
}