import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';


@HiveType(typeId: 0)
@JsonSerializable()
class User extends HiveObject{
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? first_name;
  @HiveField(2)
  String? last_name;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? phone;
  @HiveField(5)
  bool? is_admin;
  @HiveField(6)
  List<String>? aircrafts;
  @HiveField(7)
  String? profile_image;
  @HiveField(8)
  String? created_at;
  @HiveField(9)
  String? updated_at;
  @HiveField(10)
  String? refresh;
  @HiveField(11)
  String? access;

  User(
      {this.id,
        this.first_name,
        this.last_name,
        this.email,
        this.phone,
        this.is_admin,
        this.aircrafts,
        this.profile_image,
        this.created_at,
        this.updated_at,
        this.refresh,
        this.access});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);


}
