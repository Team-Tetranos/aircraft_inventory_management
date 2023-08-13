import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_record_report.g.dart';


@JsonSerializable()
class StockRecordReport{
  String? id;
  String? created_by;
  String? aircraft;
  String? card_no;
  String? date;
  String? description;
  String? stock_no;
  int? balance;
  String? image;
  String? created_at;
  String? updated_at;
  String? location;
  String? demand_schedule;
  String? unit;
  List<StockHistory>? stock_histories;
  StockRecordReport({this.id,
    this.created_by,
    this.aircraft,
    this.card_no,
    this.date,
    this.description,
    this.stock_no,
    this.balance,
    this.image,
    this.created_at,
    this.updated_at, this.location, this.demand_schedule, this.stock_histories});

  factory StockRecordReport.fromJson(Map<String, dynamic> json) => _$StockRecordReportFromJson(json);
  Map<String, dynamic> toJson() => _$StockRecordReportToJson(this);
}