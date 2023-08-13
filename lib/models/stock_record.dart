import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/models/user.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'stock_record.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class StockRecord {
  @HiveField(0)
  String? id;
  @HiveField(1)
  User? created_by;
  @HiveField(2)
  Category? aircraft;
  @HiveField(3)
  String? card_no;
  @HiveField(4)
  String? date;
  @HiveField(5)
  String? description;
  @HiveField(6)
  String? stock_no;
  @HiveField(7)
  int? balance;
  @HiveField(8)
  String? image;
  @HiveField(9)
  String? created_at;
  @HiveField(10)
  String? updated_at;
  @HiveField(11)
  String? location;
  @HiveField(12)
  String? demand_schedule;
  @HiveField(13)
  String? unit;
  @HiveField(14)
  String? latest_expiry;

  StockRecord({this.id,
    this.created_by,
    this.aircraft,
    this.card_no,
    this.date,
    this.description,
    this.stock_no,
    this.balance,
    this.image,
    this.created_at,
    this.updated_at, this.location, this.demand_schedule, this.latest_expiry});

  factory StockRecord.fromJson(Map<String, dynamic> json) => _$StockRecordFromJson(json);
  Map<String, dynamic> toJson() => _$StockRecordToJson(this);
}