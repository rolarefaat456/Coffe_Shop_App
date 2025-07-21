import 'package:flutter/material.dart';

class Passprovider extends ChangeNotifier
{
  IconData myicon = Icons.visibility_off ;
  bool obas = true;

  off()
  {
    if ( obas == true)
    {
      obas = false;
      myicon = Icons.visibility_sharp;
      notifyListeners();
    }else
    {
      obas = true;
      myicon = Icons.visibility_off;
      notifyListeners();
    }
  }

}