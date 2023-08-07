
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';


part 'category.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class Category extends HiveObject{
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? aircraft_id;
  @HiveField(3)
  String? image;
  @HiveField(4)
  String? created_at;
  @HiveField(5)
  String? updated_at;

  Category({
    this.id,
  this.name,
  this.aircraft_id,
  this.image,
  this.created_at,
  this.updated_at
});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

}



