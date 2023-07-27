import 'package:flutter/foundation.dart';

class BlankViewModel with ChangeNotifier {

}

class MyProviderForInventoryView with ChangeNotifier {
  int InventoryItemIndex=0;
  void ChangingBooleanValue(int myindex){
    InventoryItemIndex=myindex;
    notifyListeners();
  }

  }



