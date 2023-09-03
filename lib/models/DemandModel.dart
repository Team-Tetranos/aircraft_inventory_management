import 'dart:convert';

import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/models/user.dart';
/// id : "6f3a32ed-854c-4caf-97ee-01cb57ab0378"
/// created_by : {"id":"105d26e2-7001-4d82-aba4-0b8935a85fdc","permitted_aircrafts":[{"id":"b856a7c3-f00d-46b0-bf4d-58956828e301","name":"AIRBUS DAUPHIN AS365N3+","aircraft_id":"AIRBUS_DAUPHIN_AS365N3+","image":"/media/assets/aircraft/AIRBUS_DAUPHIN_AS365N3.jpg","created_at":"2023-08-22T00:02:01.859383Z","updated_at":"2023-08-22T00:02:01.859393Z"}],"first_name":null,"last_name":null,"email":"sifatalamcep16@gmail.com","phone":null,"is_admin":true,"is_verified":true,"profile_image":null,"created_at":"2023-08-22T10:36:17.756620Z","updated_at":"2023-09-02T09:02:07.189460Z"}
/// aircraft : {"id":"b2c71eb9-b3cd-40a5-95f8-e8e6a69b5231","name":"BELL 407 GXi","aircraft_id":"BELL_407_GXi","image":"/media/assets/aircraft/BELL_407_GXi_66O28br.jpg","created_at":"2023-08-22T00:01:46.352910Z","updated_at":"2023-08-22T00:01:46.352924Z"}
/// demand_no : "112236"
/// date : "2024-08-09"
/// description : "TEST DEMAND DP ??????-?????"
/// unit : "Pcs"
/// demand_quantity : 100
/// received : 30
/// demand_type : "DP"
/// image : "null"
/// created_at : "2023-09-03T10:00:58.625275Z"
/// updated_at : "2023-09-03T10:00:58.625275Z"

DemandModel demandModelFromJson(String str) => DemandModel.fromJson(json.decode(str));
String demandModelToJson(DemandModel data) => json.encode(data.toJson());
class DemandModel {
  DemandModel({
      String? id, 
      User? createdBy,
      Category? aircraft,
      String? demandNo, 
      String? date, 
      String? description, 
      String? unit, 
      num? demandQuantity, 
      num? received, 
      String? demandType, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _createdBy = createdBy;
    _aircraft = aircraft;
    _demandNo = demandNo;
    _date = date;
    _description = description;
    _unit = unit;
    _demandQuantity = demandQuantity;
    _received = received;
    _demandType = demandType;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  DemandModel.fromJson(dynamic json) {
    _id = json['id'];
    _createdBy = json['created_by'] != null ? User.fromJson(json['created_by']) : null;
    _aircraft = json['aircraft'] != null ? Category.fromJson(json['aircraft']) : null;
    _demandNo = json['demand_no'];
    _date = json['date'];
    _description = json['description'];
    _unit = json['unit'];
    _demandQuantity = json['demand_quantity'];
    _received = json['received'];
    _demandType = json['demand_type'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  User? _createdBy;
  Category? _aircraft;
  String? _demandNo;
  String? _date;
  String? _description;
  String? _unit;
  num? _demandQuantity;
  num? _received;
  String? _demandType;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
DemandModel copyWith({  String? id,
 User? createdBy,
  Category? aircraft,
  String? demandNo,
  String? date,
  String? description,
  String? unit,
  num? demandQuantity,
  num? received,
  String? demandType,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => DemandModel(  id: id ?? _id,
  createdBy: createdBy ?? _createdBy,
  aircraft: aircraft ?? _aircraft,
  demandNo: demandNo ?? _demandNo,
  date: date ?? _date,
  description: description ?? _description,
  unit: unit ?? _unit,
  demandQuantity: demandQuantity ?? _demandQuantity,
  received: received ?? _received,
  demandType: demandType ?? _demandType,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
 User? get createdBy => _createdBy;
  Category? get aircraft => _aircraft;
  String? get demandNo => _demandNo;
  String? get date => _date;
  String? get description => _description;
  String? get unit => _unit;
  num? get demandQuantity => _demandQuantity;
  num? get received => _received;
  String? get demandType => _demandType;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_createdBy != null) {
      map['created_by'] = _createdBy?.toJson();
    }
    if (_aircraft != null) {
      map['aircraft'] = _aircraft?.toJson();
    }
    map['demand_no'] = _demandNo;
    map['date'] = _date;
    map['description'] = _description;
    map['unit'] = _unit;
    map['demand_quantity'] = _demandQuantity;
    map['received'] = _received;
    map['demand_type'] = _demandType;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : "b2c71eb9-b3cd-40a5-95f8-e8e6a69b5231"
/// name : "BELL 407 GXi"
/// aircraft_id : "BELL_407_GXi"
/// image : "/media/assets/aircraft/BELL_407_GXi_66O28br.jpg"
/// created_at : "2023-08-22T00:01:46.352910Z"
/// updated_at : "2023-08-22T00:01:46.352924Z"

