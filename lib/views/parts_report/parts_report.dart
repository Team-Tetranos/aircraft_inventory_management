import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/report_view_model.dart';
import 'package:aircraft_inventory_management/views/parts_report/parts_report_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PartsReportView extends StatefulWidget {
  const PartsReportView({Key? key}) : super(key: key);

  @override
  State<PartsReportView> createState() => _PartsReportViewState();
}

class _PartsReportViewState extends State<PartsReportView> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      var rvm = Provider.of<ReportViewModel>(context, listen: false);
      await rvm.fetchAircrafts();
      await rvm.fetchReports();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<ReportViewModel>(
      builder: (context, rvm, _) {
        return ResponsiveLayout(
            desktopBody: PartsReportViewDesktop(),
            tabletBody: PartsReportViewDesktop(),
            mobileBody: PartsReportViewDesktop()
        );
      }
    );
  }
}
