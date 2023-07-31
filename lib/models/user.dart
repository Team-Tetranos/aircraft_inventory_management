import 'dart:convert';
/// id : "7d7283ba-ec65-4ef2-9257-f3eaf35cf7bb"
/// user : "3b7eec71-e273-499a-8853-cebeda2c8018"
/// first_name : "sifat"
/// last_name : "alam"
/// email : "sifat1@gmail.com"
/// phone : "dfr"
/// profile_image : "/profile_images/42189030_2281696865383488_8519768381300146176_n.jpg"
/// created_at : "2023-07-28T15:57:19.649945Z"
/// updated_at : "2023-07-28T16:21:50.846428Z"
/// refresh : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY5MDgwODc0MiwiaWF0IjoxNjkwNzIyMzQyLCJqdGkiOiJhMTYxYzg0OTI4NDk0NWViYjVjY2E5ZDBlYzFkOGE4MiIsInVzZXJfaWQiOiIzYjdlZWM3MS1lMjczLTQ5OWEtODg1My1jZWJlZGEyYzgwMTgifQ.YyR1MNURFpikdfTtDzDPopbHXRqJvGqGGgo8rcKtQac"
/// access : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzIyMjU4MzQyLCJpYXQiOjE2OTA3MjIzNDIsImp0aSI6ImFmZDY0NWNmYmIyZDQ1YzA5OGY2NjFlZTE0MTE3M2Q5IiwidXNlcl9pZCI6IjNiN2VlYzcxLWUyNzMtNDk5YS04ODUzLWNlYmVkYTJjODAxOCJ9.O1OxeGN0B2672jldPQvx_6G1lVcxitQVyDTq21UT8xU"


class User {
  User({
      String? id, 
      String? user, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? phone, 
      String? profileImage, 
      String? createdAt, 
      String? updatedAt, 
      String? refresh, 
      String? access,}){
    _id = id;
    _user = user;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phone = phone;
    _profileImage = profileImage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _refresh = refresh;
    _access = access;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _user = json['user'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phone = json['phone'];
    _profileImage = json['profile_image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _refresh = json['refresh'];
    _access = json['access'];
  }
  String? _id;
  String? _user;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phone;
  String? _profileImage;
  String? _createdAt;
  String? _updatedAt;
  String? _refresh;
  String? _access;
User copyWith({  String? id,
  String? user,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? profileImage,
  String? createdAt,
  String? updatedAt,
  String? refresh,
  String? access,
}) => User(  id: id ?? _id,
  user: user ?? _user,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phone: phone ?? _phone,
  profileImage: profileImage ?? _profileImage,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  refresh: refresh ?? _refresh,
  access: access ?? _access,
);
  String? get id => _id;
  String? get user => _user;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phone => _phone;
  String? get profileImage => _profileImage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get refresh => _refresh;
  String? get access => _access;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user'] = _user;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['profile_image'] = _profileImage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['refresh'] = _refresh;
    map['access'] = _access;
    return map;
  }

}