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
      profile_image: fields[6] as String?,
      created_at: fields[7] as String?,
      updated_at: fields[8] as String?,
      refresh: fields[9] as String?,
      access: fields[10] as String?,
      is_verified: fields[11] as bool?,
      permitted_aircrafts: (fields[12] as List?)?.cast<Category>(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(13)
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
      ..write(obj.profile_image)
      ..writeByte(7)
      ..write(obj.created_at)
      ..writeByte(8)
      ..write(obj.updated_at)
      ..writeByte(9)
      ..write(obj.refresh)
      ..writeByte(10)
      ..write(obj.access)
      ..writeByte(11)
      ..write(obj.is_verified)
      ..writeByte(12)
      ..write(obj.permitted_aircrafts);
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
      profile_image: json['profile_image'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
      is_verified: json['is_verified'] as bool?,
      permitted_aircrafts: (json['permitted_aircrafts'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'is_admin': instance.is_admin,
      'profile_image': instance.profile_image,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'refresh': instance.refresh,
      'access': instance.access,
      'is_verified': instance.is_verified,
      'permitted_aircrafts': instance.permitted_aircrafts,
    };
