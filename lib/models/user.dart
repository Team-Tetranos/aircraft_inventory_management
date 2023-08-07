import 'package:aircraft_inventory_management/models/category.dart';
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
  String? profile_image;
  @HiveField(7)
  String? created_at;
  @HiveField(8)
  String? updated_at;
  @HiveField(9)
  String? refresh;
  @HiveField(10)
  String? access;
  @HiveField(11)
  bool? is_verified;
  @HiveField(12)
  List<Category>? permitted_aircrafts;

  User(
      {this.id,
        this.first_name,
        this.last_name,
        this.email,
        this.phone,
        this.is_admin,
        this.profile_image,
        this.created_at,
        this.updated_at,
        this.refresh,
        this.access, this.is_verified, this.permitted_aircrafts});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);


}
