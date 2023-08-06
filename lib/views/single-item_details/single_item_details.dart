import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details_desktop.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleItemDetails extends StatefulWidget {
  SingleItemDetails({Key? key}) : super(key: key);

  @override
  State<SingleItemDetails> createState() => _SingleItemDetailsState();
}

class _SingleItemDetailsState extends State<SingleItemDetails> {

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SingleItemViewModel>(context,listen: false).setupAircraftItem(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<SingleItemViewModel>(
      builder: (context, svm, _) {
        return ResponsiveLayout(desktopBody: Single_Item_Details_Desktop_View(), tabletBody: Single_Item_Details_Tablet_View(), mobileBody: Single_Item_Details_Tablet_View());
      }
    );
  }
}
