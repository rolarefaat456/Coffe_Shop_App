import 'package:flutter/material.dart';

class Navbar extends ChangeNotifier
{
  int CurrentIndex = 0;
  IconData ?iconData;

  selected( int index )
  {
    CurrentIndex = index;
    notifyListeners();
  }
}