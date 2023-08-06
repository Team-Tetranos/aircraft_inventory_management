import 'dart:convert';
User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      String? id, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? phone, 
      bool? isAdmin, 
      List<String>? aircrafts, 
      String? profileImage, 
      String? createdAt, 
      String? updatedAt, 
      String? refresh, 
      String? access,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _isAdmin = isAdmin;
    _aircrafts = aircrafts;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _refresh = refresh;
    _access = access;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phone = json['phone'];
    _isAdmin = json['is_admin'];
    _aircrafts = json['aircrafts'] != null ? json['aircrafts'].cast<String>() : [];
    _profileImage = json['profile_image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _refresh = json['refresh'];
    _access = json['access'];
  }
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  bool? _isAdmin;
  List<String>? _aircrafts;
  String? _profileImage;
  String? _createdAt;
  String? _updatedAt;
  String? _refresh;
  String? _access;
User copyWith({  String? id,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  bool? isAdmin,
  List<String>? aircrafts,
  String? profileImage,
  String? createdAt,
  String? updatedAt,
  String? refresh,
  String? access,
}) => User(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phone: phone ?? _phone,
  isAdmin: isAdmin ?? _isAdmin,
  aircrafts: aircrafts ?? _aircrafts,
  profileImage: profileImage ?? _profileImage,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  refresh: refresh ?? _refresh,
  access: access ?? _access,
);
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phone => _phone;
  bool? get isAdmin => _isAdmin;
  List<String>? get aircrafts => _aircrafts;
  String? get profileImage => _profileImage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get refresh => _refresh;
  String? get access => _access;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['is_admin'] = _isAdmin;
    map['aircrafts'] = _aircrafts;
    map['profile_image'] = _profileImage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['refresh'] = _refresh;
    map['access'] = _access;
    return map;
  }

}