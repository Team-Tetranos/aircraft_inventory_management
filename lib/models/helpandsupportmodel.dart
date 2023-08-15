import 'package:json_annotation/json_annotation.dart';

part 'helpandsupportmodel.g.dart';


@JsonSerializable()
class HelpAndSupportModel{

  String? id;

 String? title;
 String? description;
 String? created_at;
 String? updated_at;
 HelpAndSupportModel({ this.title,this.id,this.description,this.created_at,this.updated_at});
  factory HelpAndSupportModel.fromJson(Map<String, dynamic> json) => _$HelpAndSupportModelFromJson(json);
  Map<String, dynamic> toJson() => _$HelpAndSupportModelToJson(this);
}