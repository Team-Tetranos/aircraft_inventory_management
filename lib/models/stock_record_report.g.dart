// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_record_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockRecordReport _$StockRecordReportFromJson(Map<String, dynamic> json) =>
    StockRecordReport(
      id: json['id'] as String?,
      created_by: json['created_by'] as String?,
      aircraft: json['aircraft'] as String?,
      card_no: json['card_no'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      stock_no: json['stock_no'] as String?,
      balance: json['balance'] as int?,
      image: json['image'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      location: json['location'] as String?,
      demand_schedule: json['demand_schedule'] as String?,
      stock_histories: (json['stock_histories'] as List<dynamic>?)
          ?.map((e) => StockHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..unit = json['unit'] as String?;

Map<String, dynamic> _$StockRecordReportToJson(StockRecordReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_by': instance.created_by,
      'aircraft': instance.aircraft,
      'card_no': instance.card_no,
      'date': instance.date,
      'description': instance.description,
      'stock_no': instance.stock_no,
      'balance': instance.balance,
      'image': instance.image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'location': instance.location,
      'demand_schedule': instance.demand_schedule,
      'unit': instance.unit,
      'stock_histories': instance.stock_histories,
    };
