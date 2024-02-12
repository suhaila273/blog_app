// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  String name;
  String age;
  String mobile;
  String address;
  String pincode;
  String email;
  String password;

  Users({
    required this.name,
    required this.age,
    required this.mobile,
    required this.address,
    required this.pincode,
    required this.email,
    required this.password,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    name: json["name"],
    age: json["age"],
    mobile: json["mobile"],
    address: json["address"],
    pincode: json["pincode"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobile": mobile,
    "address": address,
    "pincode": pincode,
    "email": email,
    "password": password,
  };
}
