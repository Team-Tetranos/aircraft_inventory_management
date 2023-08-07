import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/views/add_category_view/add_category_view_desktop.dart';
import 'package:aircraft_inventory_management/views/add_category_view/add_category_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AddCategoryView extends StatefulWidget {
  const AddCategoryView({Key? key}) : super(key: key);

  @override
  State<AddCategoryView> createState() => _AddCategoryViewState();
}

class _AddCategoryViewState extends State<AddCategoryView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardViewModel>(
      builder: (context, dvm, _) {
        return ResponsiveLayout(
            desktopBody: AddCategoryViewDesktop(),
            tabletBody:AddCategoryForTablet(),
            mobileBody: AddCategoryViewDesktop()
        );
      }
    );
  }
}
