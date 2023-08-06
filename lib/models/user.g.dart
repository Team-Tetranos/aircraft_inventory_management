// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String?,
      first_name: fields[1] as String?,
      last_name: fields[2] as String?,
      email: fields[3] as String?,
      phone: fields[4] as String?,
      is_admin: fields[5] as bool?,
      aircrafts: (fields[6] as List?)?.cast<String>(),
      profile_image: fields[7] as String?,
      created_at: fields[8] as String?,
      updated_at: fields[9] as String?,
      refresh: fields[10] as String?,
      access: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.first_name)
      ..writeByte(2)
      ..write(obj.last_name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.is_admin)
      ..writeByte(6)
      ..write(obj.aircrafts)
      ..writeByte(7)
      ..write(obj.profile_image)
      ..writeByte(8)
      ..write(obj.created_at)
      ..writeByte(9)
      ..write(obj.updated_at)
      ..writeByte(10)
      ..write(obj.refresh)
      ..writeByte(11)
      ..write(obj.access);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      is_admin: json['is_admin'] as bool?,
      aircrafts: (json['aircrafts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profile_image: json['profile_image'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'is_admin': instance.is_admin,
      'aircrafts': instance.aircrafts,
      'profile_image': instance.profile_image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'refresh': instance.refresh,
      'access': instance.access,
    };
