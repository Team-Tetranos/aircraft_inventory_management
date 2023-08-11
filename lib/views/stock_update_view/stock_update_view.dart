import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/stock_update_view/stock_update_view_desktop.dart';
import 'package:aircraft_inventory_management/views/stock_update_view/stock_update_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/single_item_view_model.dart';

class StockUpdateView extends StatefulWidget {
  const StockUpdateView({Key? key}) : super(key: key);

  @override
  State<StockUpdateView> createState() => _StockUpdateViewState();
}

class _StockUpdateViewState extends State<StockUpdateView> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      try{
        Provider.of<SingleItemViewModel>(context, listen: false).onInit();
      }catch(e){
        print(e);
      }
    });


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<SingleItemViewModel>(
      builder: (context,svm, _) {
        return ResponsiveLayout(
            desktopBody: StockUpdateViewDesktop(),
            tabletBody: StockUpdateViewTablet(),
            mobileBody: StockUpdateViewTablet()
        );
      }
    );
  }
}
