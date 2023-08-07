import 'package:aircraft_inventory_management/views/base_view/base_view_desktop.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view_tablet.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_widget/container_for_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../res/responsive_layout.dart';
import '../../view_models/dashboard_view_model.dart';
import 'dashboard_view_desktop_2.dart';

class MyDashBoardView extends StatefulWidget {
  MyDashBoardView({Key? key}) : super(key: key);

  @override
  State<MyDashBoardView> createState() => _MyDashBoardViewState();
}

class _MyDashBoardViewState extends State<MyDashBoardView> {


  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DashboardViewModel>(context, listen: false).onInit(context);
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardViewModel>(

      builder: (context, dvm, _) {
        return ResponsiveLayout(
            desktopBody: DashboardViewDesktop2(),
            tabletBody: DashBoardForTablet(),
            mobileBody: DashboardViewDesktop2()
        );
      }
    );
  }
}
