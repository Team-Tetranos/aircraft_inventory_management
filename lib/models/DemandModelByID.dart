import 'dart:convert';
/// error : false
/// key : "DEMAND"
/// data : {"id":"18f811b9-183b-4253-9b7a-c726af3070e2","created_by":{"id":"105d26e2-7001-4d82-aba4-0b8935a85fdc","permitted_aircrafts":[{"id":"b856a7c3-f00d-46b0-bf4d-58956828e301","name":"AIRBUS DAUPHIN AS365N3+","aircraft_id":"AIRBUS_DAUPHIN_AS365N3+","image":"/media/assets/aircraft/AIRBUS_DAUPHIN_AS365N3.jpg","created_at":"2023-08-22T00:02:01.859383Z","updated_at":"2023-08-22T00:02:01.859393Z"}],"first_name":null,"last_name":null,"email":"sifatalamcep16@gmail.com","phone":null,"is_admin":true,"is_verified":true,"profile_image":null,"created_at":"2023-08-22T10:36:17.756620Z","updated_at":"2023-09-02T09:02:07.189460Z"},"aircraft":{"id":"b2c71eb9-b3cd-40a5-95f8-e8e6a69b5231","name":"BELL 407 GXi","aircraft_id":"BELL_407_GXi","image":"/media/assets/aircraft/BELL_407_GXi_66O28br.jpg","created_at":"2023-08-22T00:01:46.352910Z","updated_at":"2023-08-22T00:01:46.352924Z"},"demand_no":"500","date":"2024-08-09","description":"TEST DEMAND DP ??????-?????","unit":"Pcs","demand_quantity":100,"received":30,"demand_type":"DP","image":null,"created_at":"2023-09-03T21:00:24.904567Z","updated_at":"2023-09-03T21:00:24.904578Z"}

DemandModelById demandModelByIdFromJson(String str) => DemandModelById.fromJson(json.decode(str));
String demandModelByIdToJson(DemandModelById data) => json.encode(data.toJson());
class DemandModelById {
  DemandModelById({
      bool? error, 
      String? key, 
      Data? data,}){
    _error = error;
    _key = key;
    _data = data;
}

  DemandModelById.fromJson(dynamic json) {
    _error = json['error'];
    _key = json['key'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _error;
  String? _key;
  Data? _data;
DemandModelById copyWith({  bool? error,
  String? key,
  Data? data,
}) => DemandModelById(  error: error ?? _error,
  key: key ?? _key,
  data: data ?? _data,
);
  bool? get error => _error;
  String? get key => _key;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['key'] = _key;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "18f811b9-183b-4253-9b7a-c726af3070e2"
/// created_by : {"id":"105d26e2-7001-4d82-aba4-0b8935a85fdc","permitted_aircrafts":[{"id":"b856a7c3-f00d-46b0-bf4d-58956828e301","name":"AIRBUS DAUPHIN AS365N3+","aircraft_id":"AIRBUS_DAUPHIN_AS365N3+","image":"/media/assets/aircraft/AIRBUS_DAUPHIN_AS365N3.jpg","created_at":"2023-08-22T00:02:01.859383Z","updated_at":"2023-08-22T00:02:01.859393Z"}],"first_name":null,"last_name":null,"email":"sifatalamcep16@gmail.com","phone":null,"is_admin":true,"is_verified":true,"profile_image":null,"created_at":"2023-08-22T10:36:17.756620Z","updated_at":"2023-09-02T09:02:07.189460Z"}
/// aircraft : {"id":"b2c71eb9-b3cd-40a5-95f8-e8e6a69b5231","name":"BELL 407 GXi","aircraft_id":"BELL_407_GXi","image":"/media/assets/aircraft/BELL_407_GXi_66O28br.jpg","created_at":"2023-08-22T00:01:46.352910Z","updated_at":"2023-08-22T00:01:46.352924Z"}
/// demand_no : "500"
/// date : "2024-08-09"
/// description : "TEST DEMAND DP ??????-?????"
/// unit : "Pcs"
/// demand_quantity : 100
/// received : 30
/// demand_type : "DP"
/// image : null
/// created_at : "2023-09-03T21:00:24.904567Z"
/// updated_at : "2023-09-03T21:00:24.904578Z"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      CreatedBy? createdBy, 
      Aircraft? aircraft, 
      String? demandNo, 
      String? date, 
      String? description, 
      String? unit, 
      num? demandQuantity, 
      num? received, 
      String? demandType, 
      dynamic image, 
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

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _createdBy = json['created_by'] != null ? CreatedBy.fromJson(json['created_by']) : null;
    _aircraft = json['aircraft'] != null ? Aircraft.fromJson(json['aircraft']) : null;
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
  CreatedBy? _createdBy;
  Aircraft? _aircraft;
  String? _demandNo;
  String? _date;
  String? _description;
  String? _unit;
  num? _demandQuantity;
  num? _received;
  String? _demandType;
  dynamic _image;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  CreatedBy? createdBy,
  Aircraft? aircraft,
  String? demandNo,
  String? date,
  String? description,
  String? unit,
  num? demandQuantity,
  num? received,
  String? demandType,
  dynamic image,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
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
  CreatedBy? get createdBy => _createdBy;
  Aircraft? get aircraft => _aircraft;
  String? get demandNo => _demandNo;
  String? get date => _date;
  String? get description => _description;
  String? get unit => _unit;
  num? get demandQuantity => _demandQuantity;
  num? get received => _received;
  String? get demandType => _demandType;
  dynamic get image => _image;
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

Aircraft aircraftFromJson(String str) => Aircraft.fromJson(json.decode(str));
String aircraftToJson(Aircraft data) => json.encode(data.toJson());
class Aircraft {
  Aircraft({
      String? id, 
      String? name, 
      String? aircraftId, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _aircraftId = aircraftId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Aircraft.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _aircraftId = json['aircraft_id'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _name;
  String? _aircraftId;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
Aircraft copyWith({  String? id,
  String? name,
  String? aircraftId,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Aircraft(  id: id ?? _id,
  name: name ?? _name,
  aircraftId: aircraftId ?? _aircraftId,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get name => _name;
  String? get aircraftId => _aircraftId;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['aircraft_id'] = _aircraftId;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : "105d26e2-7001-4d82-aba4-0b8935a85fdc"
/// permitted_aircrafts : [{"id":"b856a7c3-f00d-46b0-bf4d-58956828e301","name":"AIRBUS DAUPHIN AS365N3+","aircraft_id":"AIRBUS_DAUPHIN_AS365N3+","image":"/media/assets/aircraft/AIRBUS_DAUPHIN_AS365N3.jpg","created_at":"2023-08-22T00:02:01.859383Z","updated_at":"2023-08-22T00:02:01.859393Z"}]
/// first_name : null
/// last_name : null
/// email : "sifatalamcep16@gmail.com"
/// phone : null
/// is_admin : true
/// is_verified : true
/// profile_image : null
/// created_at : "2023-08-22T10:36:17.756620Z"
/// updated_at : "2023-09-02T09:02:07.189460Z"

CreatedBy createdByFromJson(String str) => CreatedBy.fromJson(json.decode(str));
String createdByToJson(CreatedBy data) => json.encode(data.toJson());
class CreatedBy {
  CreatedBy({
      String? id, 
      List<PermittedAircrafts>? permittedAircrafts, 
      dynamic firstName, 
      dynamic lastName, 
      String? email, 
      dynamic phone, 
      bool? isAdmin, 
      bool? isVerified, 
      dynamic profileImage, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _permittedAircrafts = permittedAircrafts;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _isAdmin = isAdmin;
    _isVerified = isVerified;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  CreatedBy.fromJson(dynamic json) {
    _id = json['id'];
    if (json['permitted_aircrafts'] != null) {
      _permittedAircrafts = [];
      json['permitted_aircrafts'].forEach((v) {
        _permittedAircrafts?.add(PermittedAircrafts.fromJson(v));
      });
    }
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phone = json['phone'];
    _isAdmin = json['is_admin'];
    _isVerified = json['is_verified'];
    _profileImage = json['profile_image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  List<PermittedAircrafts>? _permittedAircrafts;
  dynamic _firstName;
  dynamic _lastName;
  String? _email;
  dynamic _phone;
  bool? _isAdmin;
  bool? _isVerified;
  dynamic _profileImage;
  String? _createdAt;
  String? _updatedAt;
CreatedBy copyWith({  String? id,
  List<PermittedAircrafts>? permittedAircrafts,
  dynamic firstName,
  dynamic lastName,
  String? email,
  dynamic phone,
  bool? isAdmin,
  bool? isVerified,
  dynamic profileImage,
  String? createdAt,
  String? updatedAt,
}) => CreatedBy(  id: id ?? _id,
  permittedAircrafts: permittedAircrafts ?? _permittedAircrafts,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phone: phone ?? _phone,
  isAdmin: isAdmin ?? _isAdmin,
  isVerified: isVerified ?? _isVerified,
  profileImage: profileImage ?? _profileImage,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  List<PermittedAircrafts>? get permittedAircrafts => _permittedAircrafts;
  dynamic get firstName => _firstName;
  dynamic get lastName => _lastName;
  String? get email => _email;
  dynamic get phone => _phone;
  bool? get isAdmin => _isAdmin;
  bool? get isVerified => _isVerified;
  dynamic get profileImage => _profileImage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_permittedAircrafts != null) {
      map['permitted_aircrafts'] = _permittedAircrafts?.map((v) => v.toJson()).toList();
    }
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['is_admin'] = _isAdmin;
    map['is_verified'] = _isVerified;
    map['profile_image'] = _profileImage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : "b856a7c3-f00d-46b0-bf4d-58956828e301"
/// name : "AIRBUS DAUPHIN AS365N3+"
/// aircraft_id : "AIRBUS_DAUPHIN_AS365N3+"
/// image : "/media/assets/aircraft/AIRBUS_DAUPHIN_AS365N3.jpg"
/// created_at : "2023-08-22T00:02:01.859383Z"
/// updated_at : "2023-08-22T00:02:01.859393Z"

PermittedAircrafts permittedAircraftsFromJson(String str) => PermittedAircrafts.fromJson(json.decode(str));
String permittedAircraftsToJson(PermittedAircrafts data) => json.encode(data.toJson());
class PermittedAircrafts {
  PermittedAircrafts({
      String? id, 
      String? name, 
      String? aircraftId, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _aircraftId = aircraftId;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  PermittedAircrafts.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _aircraftId = json['aircraft_id'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _name;
  String? _aircraftId;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
PermittedAircrafts copyWith({  String? id,
  String? name,
  String? aircraftId,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => PermittedAircrafts(  id: id ?? _id,
  name: name ?? _name,
  aircraftId: aircraftId ?? _aircraftId,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get name => _name;
  String? get aircraftId => _aircraftId;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['aircraft_id'] = _aircraftId;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}