import 'dart:convert';

class Category {
  Category({
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

  Category.fromJson(dynamic json) {
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
Category copyWith({  String? id,
  String? name,
  String? aircraftId,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Category(  id: id ?? _id,
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