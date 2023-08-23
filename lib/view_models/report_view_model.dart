import 'dart:io';

import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/utils/snackbars/input_field_error_snackbar.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'package:path/path.dart' as path;
import 'package:syncfusion_flutter_pdf/pdf.dart';

import '../dependency_injection/di.dart';
import '../models/stock_record.dart';
import '../models/stock_record_report.dart';
import '../utils/convertStockHistoryToString.dart';
import 'inventory_view_model.dart';


class ReportViewModel extends ChangeNotifier{

  AircraftRepository aircraftRepository = sl.get();

  List<ct.Category> aircrafts = [];

  List<StockRecordReport> reports = [];
  List<StockRecordReport> duplicatereports = [];
  bool loading = false;

  changeLoading(bool b){
      loading = b;
      notifyListeners();
  }

  ct.Category? selectedAircraft;

  updateSelectedAircraft(ct.Category a){
    selectedAircraft = a;
    print(selectedAircraft!.name);
    filterReport();
    notifyListeners();
  }

  filterReport(){
    if(selectedAircraft==null||selectedAircraft!.id==null){
      duplicatereports = reports;
    }else{
      duplicatereports = reports.where((element) => element.aircraft==selectedAircraft!.id).toList();
      sortReport();
    }
    notifyListeners();
  }


  fetchAircrafts()async{
    selectedAircraft=null;
    print('fetching is called');

    EasyLoading.show();

    changeLoading(true);

    try{
      var response = await aircraftRepository.allAircrafts();

      if(response is List<ct.Category>){
        aircrafts = [ct.Category()];
        aircrafts.addAll(response);
        print(aircrafts.length);
        notifyListeners();
      }
    }catch(e){
    }
    changeLoading(false);
    EasyLoading.dismiss();

  }

  sortReport(){
    try{
      duplicatereports.sort((a, b){
        List<String> partsA = a.card_no!.split('/');
        List<String> partsB = b.card_no!.split('/');

        // Compare the first part (before '/') as strings
        if(partsA[0].length!=partsB[0].length){
          return partsA[0].length.compareTo(partsB[0].length);
        }
        int partComparison = partsA[0].compareTo(partsB[0]);
        if (partComparison != 0) {
          return partComparison;
        }

        // If the first part is the same, compare the second part (after '/') as integers
        int intComparison = int.parse(partsA[1]).compareTo(int.parse(partsB[1]));
        return intComparison;
      });
      notifyListeners();
    }catch(e){
      print(e);
    }

  }

  fetchReports()async{
    EasyLoading.show();
    changeLoading(true);

    try{
      var response = await aircraftRepository.getStockRecordReport();

      if(response is List<StockRecordReport>){
        reports =response;
        duplicatereports = reports;
        sortReport();
        notifyListeners();
      }
    }catch(e){


    }
    changeLoading(false);
    EasyLoading.dismiss();
  }



  void processReportTap(BuildContext context, StockRecord notificaiton) {

    print('comming to here');
    print(notificaiton.aircraft);
    try{
      var base = Provider.of<BaseViewModel>(context, listen: false);
      base.updatePickedAircraft(notificaiton.aircraft!);
      base.changingOptions(context, 'inventory');
      try{

        var mp = Provider.of<MyProviderForInventoryView>(context,listen: false);
        mp.updateSelectedStockRecord(notificaiton);
        mp.updateOnTimePass(true);
      }catch(e){
        print(e);
      }
    }catch(e){
      print(e);
    }

  }

  void onSelectRow(BuildContext context, int index) {
    /*print('tapped');
    StockRecordReport stockRecordReport = reports[index];
    ct.Category aircraft = ct.Category();
    try{

      aircraft = Provider.of<DashboardViewModel>(context, listen: false).aircrafts.firstWhere((element) => element.id==stockRecordReport.aircraft);

    }catch(e){

    }
    StockRecord stockRecord = StockRecord(
        id: stockRecordReport.id,
        card_no: stockRecordReport.card_no,
        stock_no: stockRecordReport.stock_no,
        description: stockRecordReport.description,
        date: stockRecordReport.date,
      location: stockRecordReport.location,
      image: stockRecordReport.image,
      unit: stockRecordReport.unit,
      created_at: stockRecordReport.created_at,
      aircraft: aircraft,
    );
    processReportTap(context, stockRecord);*/
  }

  Future<List<int>> generatePdf(List<StockRecordReport> stockRecords) async {

    final PdfDocument pdf = PdfDocument();
    pdf.pageSettings.orientation = PdfPageOrientation.landscape;
    final pdfPage = pdf.pages.add();
    final pageWidth = pdfPage.getClientSize().width;


    final data = await rootBundle.load("assets/fonts/Inter-Regular.ttf");
    final fontLarge = PdfTrueTypeFont(data.buffer.asUint8List(), 14);
    final fontmedium = PdfTrueTypeFont(data.buffer.asUint8List(), 12);

    final title = PdfTextElement(
      text: 'Army Aviation Maintenance Workshop',
      font: fontLarge,
      brush: PdfSolidBrush(PdfColor(0, 0, 0)),
      format: PdfStringFormat(alignment: PdfTextAlignment.center)

    );

    var titleLayout = title.draw(graphics: pdfPage.graphics, bounds: Rect.fromLTWH(0, 0, pageWidth, 30),);

    final reportTitle = PdfTextElement(
      text: '${titleText.text.trim()}',
      font: fontmedium,
      brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center)

    );
    var reportLayout = reportTitle.draw(graphics: pdfPage.graphics, bounds: Rect.fromLTWH(0, titleLayout?.bounds.bottom??0 + 20, pageWidth, 20),);


    final dateTitle = PdfTextElement(
        text: 'Date: ${reportDate.text.trim()}',
        font: fontmedium,
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center)

    );
    dateTitle.draw(graphics: pdfPage.graphics, bounds: Rect.fromLTWH(0, titleLayout?.bounds.bottom??0 + 40, pageWidth, 20),);


    final table = PdfGrid();
    table.style.cellPadding = PdfPaddings(left: 5, right: 5, bottom: 5, top: 5);
    table.columns.add(count: 11);
    table.headers.add(1);

    table.headers[0].cells[0].value = 'SL';
    table.headers[0].cells[1].value = 'Pt No';
    table.headers[0].cells[2].value = 'Nomenclature';
    table.headers[0].cells[3].value = 'A/U';
    table.headers[0].cells[4].value = 'Card No';
    table.headers[0].cells[5].value = 'Qty';
    table.headers[0].cells[6].value = 'Received Dt';
    table.headers[0].cells[7].value = 'Expire Dt';
    table.headers[0].cells[8].value = 'Expenditure Qty';
    table.headers[0].cells[9].value = 'Expenditure Dt';
    table.headers[0].cells[10].value = 'Rmk';

    for (int i = 0; i < stockRecords.length; i++) {
      final row = table.rows.add();
      row.cells[0].value = (i + 1).toString();
      row.cells[1].value = stockRecords[i].stock_no ?? '';
      row.cells[2].value = stockRecords[i].description ?? '';
      row.cells[3].value = stockRecords[i].unit ?? '';
      row.cells[4].value = stockRecords[i].card_no ?? '';
      row.cells[5].value = (stockRecords[i].balance ?? 0) == 0 ? 'NIL' : (stockRecords[i].balance ?? 0).toString();
      row.cells[6].value = convertStockHistoryToString(stockRecords[i].stock_histories, true);
      row.cells[7].value = convertStockHistoryToStringExpiry(stockRecords[i].stock_histories);
      row.cells[8].value = totalExpenditureQuantity(stockRecords[i].stock_histories);
      row.cells[9].value = convertStockHistoryToString(stockRecords[i].stock_histories, false);
      row.cells[10].value = '';
    }

    table.draw(
      page: pdfPage,
      bounds: Rect.fromLTWH(0, 60, pageWidth, pdfPage.getClientSize().height-40),
    );

    final List<int> pdfBytes = await pdf.save();
    pdf.dispose();

    return pdfBytes;



  }


  generateExcel(List<StockRecordReport> stockRecords){
    final Excel excel = Excel.createExcel();
    final Sheet sheet = excel['Sheet1'];

    // Add title
    sheet.appendRow(['Army Aviation Maintenance Workshop']);

    // Add report title
    sheet.appendRow([titleText.text.trim()]);

    sheet.appendRow(['Date: ', reportDate.text.trim()]);

    // Add table headers
    sheet.appendRow(['SL', 'Pt No', 'Nomenclature', 'A/U', 'Card No', 'Qty', 'Received Dt', 'Expire Dt', 'Expenditure Qty', 'Expenditure Dt', 'Rmk']);

    // Add table data
    for (int i = 0; i < stockRecords.length; i++) {
      sheet.appendRow([
        (i + 1).toString(),
        stockRecords[i].stock_no ?? '',
        stockRecords[i].description ?? '',
        stockRecords[i].unit ?? '',
        stockRecords[i].card_no ?? '',
        (stockRecords[i].balance ?? 0) == 0 ? 'NIL' : (stockRecords[i].balance ?? 0).toString(),
        convertStockHistoryToString(stockRecords[i].stock_histories, true),
        convertStockHistoryToStringExpiry(stockRecords[i].stock_histories),
        totalExpenditureQuantity(stockRecords[i].stock_histories),
        convertStockHistoryToString(stockRecords[i].stock_histories, false),
        '',
      ]);
    }

    return excel.save();

  }

  TextEditingController titleText = TextEditingController();
  TextEditingController fileName = TextEditingController();
  List<String> exportAs = [
    'PDF',
    'EXCEL'
  ];

  String? selectedExportAs = 'PDF';

  updateSelectedExport(String e){
    selectedExportAs = e;
    notifyListeners();
  }

  TextEditingController reportDate = TextEditingController();

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      reportDate.text = DateFormat('dd-MMM-yyyy').format(pd);
      notifyListeners();
    }

  }

  generateReportDialog(BuildContext context){

    print('hit');
    titleText.text = selectedAircraft==null? "List of Spare Parts for All Aircrafts":selectedAircraft!.name==null?"List of Spare Parts for All Aircrafts":"List of Spare Parts for ${selectedAircraft!.name}";

    showDialog(context: context, builder: (ctx){
      return Consumer<ReportViewModel>(
        builder: (context, rvm, _) {
          return AlertDialog(
            title: Text('Export Report'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleText,
                  decoration: InputDecoration(labelText: 'Report Title'),
                  enabled: false,
                ),
                SizedBox(height: 10),
                Container(
                  child: DropdownButton(
                    value: selectedExportAs,
                      items: exportAs.map(
                              (e) => DropdownMenuItem(
                                value: e,
                                  child: Text('$e')
                              )
                      ).toList(),
                      onChanged: (s){

                      updateSelectedExport(s!);

                      }
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onTap: (){
                    pickDate(context);
                  },
                  controller: reportDate,
                  decoration: InputDecoration(labelText: 'Choose Date'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: fileName,
                  decoration: InputDecoration(labelText: 'File Name'),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop(); // Close the dialog
                },
                child: Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: ()async{
                  if (titleText.text.isEmpty || fileName.text.isEmpty||reportDate.text.isEmpty) {
                    inputFieldErrorSnackbar(context: context, message: 'Must put Date and Filename');
                  }else{
                    Navigator.pop(ctx);
                    await generateReport();
                  }
                },
                child: Text('Save'),
              ),
            ],
          );
        }
      );
    });

  }

  generateReport()async{
    EasyLoading.show();
    try{

      if(selectedExportAs==exportAs[0]){
        final pdfBytes = await generatePdf(duplicatereports);

        var storageStatus = await Permission.storage.status;
        if (storageStatus != PermissionStatus.granted) {
          storageStatus = await Permission.storage.request();
          if (storageStatus != PermissionStatus.granted) {
            return;
          }
        }


        var dpath = await getDirectoryPath();



        if (dpath != null) {
          var p = path.join(dpath, '${fileName.text.trim()}.pdf');
          print(p);
          try {
            File f = File(p);
            await f.writeAsBytes(pdfBytes);

          } catch (er) {
            // FileSystemException: Cannot open file, path = '/storage/emulated/0/.Android/test.jpg' (OS Error: Permission denied, errno = 13)
          }
        }
      }else{
        final pdfBytes = generateExcel(duplicatereports);
        var storageStatus = await Permission.storage.status;
        if (storageStatus != PermissionStatus.granted) {
          storageStatus = await Permission.storage.request();
          if (storageStatus != PermissionStatus.granted) {
            return;
          }
        }


        var dpath = await getDirectoryPath();



        if (dpath != null) {
          var p = path.join(dpath, '${fileName.text.trim()}.xlsx');
          print(p);
          try {
            File f = File(p);

            await f.writeAsBytes(pdfBytes);

          } catch (er) {
            // FileSystemException: Cannot open file, path = '/storage/emulated/0/.Android/test.jpg' (OS Error: Permission denied, errno = 13)
          }
        }
      }




    }catch(e){

      print(e);
    }

    EasyLoading.dismiss();

  }




}