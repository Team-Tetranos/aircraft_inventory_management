import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/single_stock_history_view/single_stock_history_view_desktop.dart';
import 'package:aircraft_inventory_management/views/single_stock_history_view/single_stock_history_view_tablet.dart';
import 'package:flutter/material.dart';

class SingleStockHistoryView extends StatefulWidget {
  const SingleStockHistoryView({Key? key}) : super(key: key);

  @override
  State<SingleStockHistoryView> createState() => _SingleStockHistoryViewState();
}

class _SingleStockHistoryViewState extends State<SingleStockHistoryView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: SingleStockHistoryViewDesktop(),
        tabletBody: SingleStockHistoryViewTablet(),
        mobileBody: SingleStockHistoryViewTablet()
    );
  }
}
