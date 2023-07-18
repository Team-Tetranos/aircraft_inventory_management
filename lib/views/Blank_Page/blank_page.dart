import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/Blank_Page/blank_page_desktop.dart';
import 'package:aircraft_inventory_management/views/Blank_Page/blank_page_mobile.dart';
import 'package:aircraft_inventory_management/views/Blank_Page/blank_page_tablet.dart';
import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(desktopBody: BlankPageDesktop(), tabletBody: BlankPageTablet(), mobileBody: BlankPageMobile());
  }
}
