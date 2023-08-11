import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/stock_history_view_model.dart';
import 'package:aircraft_inventory_management/views/stock_history_view/stock_history_view_desktop.dart';
import 'package:aircraft_inventory_management/views/stock_history_view/stock_history_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
import '../../view_models/view_model_for_base_view/base_view_model.dart';

class StockHistoryView extends StatefulWidget {
  StockRecord stockRecord;
  StockHistoryView({Key? key, required this.stockRecord}) : super(key: key);

  @override
  State<StockHistoryView> createState() => _StockHistoryViewState();
}

class _StockHistoryViewState extends State<StockHistoryView> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      try{
        Category ct = Provider.of<BaseViewModel>(context, listen: false).pickedAircraft!;
        await Provider.of<StockHistoryViewModel>(context, listen: false).onInit(context, ct, widget.stockRecord);
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
    return Consumer<StockHistoryViewModel>(
      builder: (context, ivm, _) {
        return ResponsiveLayout(
            desktopBody: StockHistoryViewDesktop(),
            tabletBody: StockHistoryViewTablet(),
            mobileBody: StockHistoryViewTablet()
        );
      }
    );
  }
}
