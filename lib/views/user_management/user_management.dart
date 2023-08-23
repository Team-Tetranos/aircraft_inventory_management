import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:aircraft_inventory_management/views/user_management/user_management_desktop.dart';
import 'package:aircraft_inventory_management/views/user_management/user_management_pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../inventory_view/pagination_class.dart';

class UserManagementView extends StatefulWidget {
  const UserManagementView({Key? key}) : super(key: key);

  @override
  State<UserManagementView> createState() => _UserManagementViewState();
}

class _UserManagementViewState extends State<UserManagementView> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<ManageStoreViewModel>(
      builder: (context, msvm, _) {
        return ResponsiveLayout(
            desktopBody: UserManagementViewDesktop(),
            tabletBody: UserManagementViewDesktop(),
            mobileBody: UserManagementViewDesktop()
        );
      }
    );
  }
}
