import 'package:aircraft_inventory_management/view_models/stock_view_model.dart';
import 'package:aircraft_inventory_management/views/add_category_view/add_category_view_desktop.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/add_inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/add_inventory_view_tablet.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_for_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
import '../../res/responsive_layout.dart';
import '../../view_models/inventory_view_model.dart';
import '../../view_models/view_model_for_base_view/base_view_model.dart';
import '../base_view/base_view_desktop.dart';

class AddInventoryView extends StatefulWidget {
  AddInventoryView({Key? key, required this.fromAddStock}) : super(key: key);

  bool fromAddStock;

  @override
  State<AddInventoryView> createState() => _AddInventoryViewState();
}

class _AddInventoryViewState extends State<AddInventoryView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      try{
        Category ct = Provider.of<BaseViewModel>(context, listen: false).pickedAircraft!;
        await Provider.of<StockViewModel>(context, listen: false).onInit(context, ct);
        /*Provider.of<StockViewModel>(context, listen: false).initiateAircraftItem(ct);
        Provider.of<StockViewModel>(context, listen: false).initiateStockRecord(null);*/
      }catch(e){
        print(e);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: AddInventoryViewForDesktop(),
        tabletBody: AddInventoryViewForTablet(),
        mobileBody: MybaseViewDesktop()
    );
  }
}
