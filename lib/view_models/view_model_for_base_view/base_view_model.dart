import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier{
  int baseviewIndex=0;

  changingOptions(int myIndex){
    baseviewIndex=myIndex;
    notifyListeners();
  }
}