// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StockRecordAdapter extends TypeAdapter<StockRecord> {
  @override
  final int typeId = 2;

  @override
  StockRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockRecord(
      id: fields[0] as String?,
      created_by: fields[1] as User?,
      aircraft: fields[2] as Category?,
      card_no: fields[3] as String?,
      date: fields[4] as String?,
      description: fields[5] as String?,
      stock_no: fields[6] as String?,
      balance: fields[7] as int?,
      image: fields[8] as String?,
      created_at: fields[9] as String?,
      updated_at: fields[10] as String?,
      location: fields[11] as String?,
      demand_schedule: fields[12] as String?,
      latest_expiry: fields[14] as String?,
    )..unit = fields[13] as String?;
  }

  @override
  void write(BinaryWriter writer, StockRecord obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created_by)
      ..writeByte(2)
      ..write(obj.aircraft)
      ..writeByte(3)
      ..write(obj.card_no)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.stock_no)
      ..writeByte(7)
      ..write(obj.balance)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.created_at)
      ..writeByte(10)
      ..write(obj.updated_at)
      ..writeByte(11)
      ..write(obj.location)
      ..writeByte(12)
      ..write(obj.demand_schedule)
      ..writeByte(13)
      ..write(obj.unit)
      ..writeByte(14)
      ..write(obj.latest_expiry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockRecord _$StockRecordFromJson(Map<String, dynamic> json) => StockRecord(
      id: json['id'] as String?,
      created_by: json['created_by'] == null
          ? null
          : User.fromJson(json['created_by'] as Map<String, dynamic>),
      aircraft: json['aircraft'] == null
          ? null
          : Category.fromJson(json['aircraft'] as Map<String, dynamic>),
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
      latest_expiry: json['latest_expiry'] as String?,
    )..unit = json['unit'] as String?;

Map<String, dynamic> _$StockRecordToJson(StockRecord instance) =>
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
      'latest_expiry': instance.latest_expiry,
    };
