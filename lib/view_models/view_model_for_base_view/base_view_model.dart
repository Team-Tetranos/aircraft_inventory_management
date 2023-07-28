import 'package:flutter/material.dart';

class MyProviderForBaseView extends ChangeNotifier{
  int baseviewIndex=0;
  ChangingOptions(int myIndex){
    baseviewIndex=myIndex;
    notifyListeners();
  }
}