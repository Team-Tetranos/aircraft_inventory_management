import 'package:flutter/cupertino.dart';

import '../dependency_injection/di.dart';
import 'constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopBody;
  final Widget tabletBody;
  final Widget mobileBody;
  ResponsiveLayout({Key? key, required this.desktopBody, required this.tabletBody, required this.mobileBody}) : super(key: key);

  AppConstants appConstants = sl.get<AppConstants>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth<appConstants.mobile_width){
        return desktopBody;
      }else if(constraints.maxWidth>=appConstants.mobile_width&&constraints.maxWidth<appConstants.tablet_width){
        return desktopBody;
      }else{
        return desktopBody;
      }
    });
  }
}
