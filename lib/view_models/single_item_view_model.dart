
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class SingleItemViewModel extends ChangeNotifier{

  Aircraftitem aircraftitem = Aircraftitem();


  setupAircraftItem(BuildContext context){
    try{
      aircraftitem = Provider.of<BaseViewModel>(context, listen: false).pickedAircraftItem!;
      notifyListeners();
    }catch(e){
      print(e);
    }
  }

}