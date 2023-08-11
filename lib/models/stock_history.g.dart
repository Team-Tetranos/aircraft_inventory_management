// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StockHistoryAdapter extends TypeAdapter<StockHistory> {
  @override
  final int typeId = 3;

  @override
  StockHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockHistory(
      id: fields[0] as String?,
      created_by: fields[1] as String?,
      stock_record: fields[2] as String?,
      date: fields[3] as String?,
      voucher_no: fields[4] as String?,
      quantity: fields[5] as int?,
      image: fields[6] as String?,
      received: fields[7] as bool?,
      created_at: fields[8] as String?,
      updated_at: fields[9] as String?,
      uploaded: fields[10] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, StockHistory obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.created_by)
      ..writeByte(2)
      ..write(obj.stock_record)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.voucher_no)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.received)
      ..writeByte(8)
      ..write(obj.created_at)
      ..writeByte(9)
      ..write(obj.updated_at)
      ..writeByte(10)
      ..write(obj.uploaded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockHistory _$StockHistoryFromJson(Map<String, dynamic> json) => StockHistory(
      id: json['id'] as String?,
      created_by: json['created_by'] as String?,
      stock_record: json['stock_record'] as String?,
      date: json['date'] as String?,
      voucher_no: json['voucher_no'] as String?,
      quantity: json['quantity'] as int?,
      image: json['image'] as String?,
      received: json['received'] as bool?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      uploaded: json['uploaded'] as bool? ?? true,
    );

Map<String, dynamic> _$StockHistoryToJson(StockHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_by': instance.created_by,
      'stock_record': instance.stock_record,
      'date': instance.date,
      'voucher_no': instance.voucher_no,
      'quantity': instance.quantity,
      'image': instance.image,
      'received': instance.received,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'uploaded': instance.uploaded,
    };
