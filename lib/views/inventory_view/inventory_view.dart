import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_for_tablet.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details.dart';
import 'package:aircraft_inventory_management/views/stock_history_view/stock_history_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/responsive_layout.dart';
import '../base_view/base_view_desktop.dart';

class InventoryView extends StatefulWidget {
  const InventoryView({Key? key}) : super(key: key);

  @override
  State<InventoryView> createState() => _InventoryViewState();
}

class _InventoryViewState extends State<InventoryView> {

  @override
  void initState() {

    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<MyProviderForInventoryView>(context, listen: false).updateAircraftItemsForInventory(context);
      Provider.of<MyProviderForInventoryView>(context, listen: false).fetchStocksForAircraft(context);

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProviderForInventoryView>(
        builder: (context, bvm, _)
    {
      return Container(
        height: 1050,
        width: MediaQuery.of(context).size.width*.75,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: bvm.pageController,
          children: [
            ResponsiveLayout(
                desktopBody: InventoryViewForDesktop(),
                tabletBody: InventoryViewForTablet(),
                mobileBody: MybaseViewDesktop()
            ),
            SingleItemDetails(),
            StockHistoryView(stockRecord: Provider
                .of<MyProviderForInventoryView>(context, listen: false)
                .selectedStockRecord,)

          ],
        ),


      );
    }
    );
  }
}
