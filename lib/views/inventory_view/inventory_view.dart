import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_tablet.dart';
import 'package:flutter/material.dart';

import '../../res/responsive_layout.dart';
import '../dashboard_view/dashboard_view_desktop_2.dart';

class Inventory_View extends StatefulWidget {
  const Inventory_View({Key? key}) : super(key: key);

  @override
  State<Inventory_View> createState() => _Inventory_ViewState();
}

class _Inventory_ViewState extends State<Inventory_View> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: InventoryViewForDesktop(),
        tabletBody: InventoryViewForTablet(),
        mobileBody: DashboardViewDesktop2()
    );
  }
}
