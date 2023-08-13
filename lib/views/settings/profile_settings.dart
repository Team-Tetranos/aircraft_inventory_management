import 'package:aircraft_inventory_management/views/settings/profile_settings_desktop.dart';
import 'package:aircraft_inventory_management/views/settings/profile_settings_tablet.dart';
import 'package:flutter/material.dart';

import '../../res/responsive_layout.dart';

class Profile_Settings_View extends StatefulWidget {
  const Profile_Settings_View({Key? key}) : super(key: key);

  @override
  State<Profile_Settings_View> createState() => _Profile_Settings_ViewState();
}

class _Profile_Settings_ViewState extends State<Profile_Settings_View> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody:Profile_Settings_View_Desktop(),
        tabletBody: ProfileSettingsTablet(),
        mobileBody: ProfileSettingsTablet(),
    );
  }
}
