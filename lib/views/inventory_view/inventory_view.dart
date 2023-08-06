import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_for_tablet.dart';
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
  Widget build(BuildContext context) {
    return Consumer<MyProviderForInventoryView>(
        builder: (context, bvm, _) {

              return ResponsiveLayout(
                  desktopBody: InventoryViewForDesktop(),
                  tabletBody: InventoryViewForTablet(),
                  mobileBody: MybaseViewDesktop()
              );

        }
    );
  }
}
