import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:aircraft_inventory_management/views/manage_store_user_details_view/manage_store_user_details_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ManageStoreUserDetails extends StatefulWidget {
  const ManageStoreUserDetails({Key? key}) : super(key: key);

  @override
  State<ManageStoreUserDetails> createState() => _ManageStoreUserDetailsState();
}

class _ManageStoreUserDetailsState extends State<ManageStoreUserDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ManageStoreViewModel>(
      builder: (context, msvm, _) {
        return ResponsiveLayout(
            desktopBody: ManageStoreUserDetailsDesktop(),
            tabletBody: ManageStoreUserDetailsDesktop(),
            mobileBody: ManageStoreUserDetailsDesktop()
        );
      }
    );
  }
}
