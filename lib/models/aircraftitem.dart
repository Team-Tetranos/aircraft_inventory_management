import 'dart:convert';

class Aircraftitem {
  Aircraftitem({
      String? id, 
      String? partNo, 
      String? nomenclature, 
      String? astronomicalUnit, 
      String? cardNo, 
      String? quantity, 
      String? receivedDiOrg, 
      String? manufacturer, 
      String? expire, 
      String? expenditure, 
      String? rmk, 
      String? aircraft, 
      String? image, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _partNo = partNo;
    _nomenclature = nomenclature;
    _astronomicalUnit = astronomicalUnit;
    _cardNo = cardNo;
    _quantity = quantity;
    _receivedDiOrg = receivedDiOrg;
    _manufacturer = manufacturer;
    _expire = expire;
    _expenditure = expenditure;
    _rmk = rmk;
    _aircraft = aircraft;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Aircraftitem.fromJson(dynamic json) {
    _id = json['id'];
    _partNo = json['part_no'];
    _nomenclature = json['nomenclature'];
    _astronomicalUnit = json['astronomical_unit'];
    _cardNo = json['card_no'];
    _quantity = json['quantity'];
    _receivedDiOrg = json['received_di_org'];
    _manufacturer = json['manufacturer'];
    _expire = json['expire'];
    _expenditure = json['expenditure'];
    _rmk = json['rmk'];
    _aircraft = json['aircraft'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _partNo;
  String? _nomenclature;
  String? _astronomicalUnit;
  String? _cardNo;
  String? _quantity;
  String? _receivedDiOrg;
  String? _manufacturer;
  String? _expire;
  String? _expenditure;
  String? _rmk;
  String? _aircraft;
  String? _image;
  String? _createdAt;
  String? _updatedAt;
Aircraftitem copyWith({  String? id,
  String? partNo,
  String? nomenclature,
  String? astronomicalUnit,
  String? cardNo,
  String? quantity,
  String? receivedDiOrg,
  String? manufacturer,
  String? expire,
  String? expenditure,
  String? rmk,
  String? aircraft,
  String? image,
  String? createdAt,
  String? updatedAt,
}) => Aircraftitem(  id: id ?? _id,
  partNo: partNo ?? _partNo,
  nomenclature: nomenclature ?? _nomenclature,
  astronomicalUnit: astronomicalUnit ?? _astronomicalUnit,
  cardNo: cardNo ?? _cardNo,
  quantity: quantity ?? _quantity,
  receivedDiOrg: receivedDiOrg ?? _receivedDiOrg,
  manufacturer: manufacturer ?? _manufacturer,
  expire: expire ?? _expire,
  expenditure: expenditure ?? _expenditure,
  rmk: rmk ?? _rmk,
  aircraft: aircraft ?? _aircraft,
  image: image ?? _image,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get partNo => _partNo;
  String? get nomenclature => _nomenclature;
  String? get astronomicalUnit => _astronomicalUnit;
  String? get cardNo => _cardNo;
  String? get quantity => _quantity;
  String? get receivedDiOrg => _receivedDiOrg;
  String? get manufacturer => _manufacturer;
  String? get expire => _expire;
  String? get expenditure => _expenditure;
  String? get rmk => _rmk;
  String? get aircraft => _aircraft;
  String? get image => _image;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['part_no'] = _partNo;
    map['nomenclature'] = _nomenclature;
    map['astronomical_unit'] = _astronomicalUnit;
    map['card_no'] = _cardNo;
    map['quantity'] = _quantity;
    map['received_di_org'] = _receivedDiOrg;
    map['manufacturer'] = _manufacturer;
    map['expire'] = _expire;
    map['expenditure'] = _expenditure;
    map['rmk'] = _rmk;
    map['aircraft'] = _aircraft;
    map['image'] = _image;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}