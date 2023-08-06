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
  const AddInventoryView({Key? key}) : super(key: key);

  @override
  State<AddInventoryView> createState() => _AddInventoryViewState();
}

class _AddInventoryViewState extends State<AddInventoryView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      try{
        Category ct = Provider.of<BaseViewModel>(context, listen: false).pickedAircraft!;
        Provider.of<MyProviderForInventoryView>(context, listen: false).initiateAircraftItem(ct);
      }catch(e){
        print(e);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: InventoryViewForDesktop(),
        tabletBody: InventoryViewForTablet(),
        mobileBody: MybaseViewDesktop()
    );
  }
}
