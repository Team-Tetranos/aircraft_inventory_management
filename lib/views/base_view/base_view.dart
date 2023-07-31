import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/responsive_layout.dart';

class BaseViewHome extends StatelessWidget {
  const BaseViewHome({Key? key}) : super(key: key);

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
                tabletBody: MybaseViewDesktop(),
                mobileBody: MybaseViewDesktop()
            )
        );
      }
    );
  }
}
