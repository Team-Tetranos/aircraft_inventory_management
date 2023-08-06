import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_desktop.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/responsive_layout.dart';
import '../../view_models/dashboard_view_model.dart';

class BaseViewHome extends StatefulWidget {
  const BaseViewHome({Key? key}) : super(key: key);

  @override
  State<BaseViewHome> createState() => _BaseViewHomeState();
}

class _BaseViewHomeState extends State<BaseViewHome> {
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DashboardViewModel>(context, listen: false).fetchAllAircrafts();
      Provider.of<DashboardViewModel>(context, listen: false).fetchAllAircraftItems();
      Provider.of<BaseViewModel>(context, listen: false).onInit();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BaseViewModel>(
      builder: (context, bvm, _) {
        return WillPopScope(
          onWillPop: ()async{
            bvm.closeAppDialog(context);
            return true;
          },
            child: ResponsiveLayout(
                desktopBody: MybaseViewDesktop(),
                tabletBody: Base_View_tablet(),
                mobileBody: MybaseViewDesktop()
            )
        );
      }
    );
  }
}
