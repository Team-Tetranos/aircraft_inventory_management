import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/models/user.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';


part 'stock_history.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class StockHistory extends HiveObject{

  @HiveField(0)
  String? id;
  @HiveField(1)
  String? created_by;
  @HiveField(2)
  String? stock_record;
  @HiveField(3)
  String? date;
  @HiveField(4)
  String? voucher_no;
  @HiveField(5)
  int? quantity;
  @HiveField(6)
  String? image;
  @HiveField(7)
  bool? received;
  @HiveField(8)
  String? created_at;
  @HiveField(9)
  String? updated_at;
  @HiveField(10)
  bool uploaded;

  StockHistory({this.id,
    this.created_by,
    this.stock_record,
    this.date,
    this.voucher_no,
    this.quantity,
    this.image,
    this.received,
    this.created_at,
    this.updated_at, this.uploaded=true});

  factory StockHistory.fromJson(Map<String, dynamic> json) => _$StockHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$StockHistoryToJson(this);
}