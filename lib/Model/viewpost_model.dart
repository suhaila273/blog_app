// To parse this JSON data, do
//
//     final viewpost = viewpostFromJson(jsonString);

import 'dart:convert';

List<Viewpost> viewpostFromJson(String str) => List<Viewpost>.from(json.decode(str).map((x) => Viewpost.fromJson(x)));

String viewpostToJson(List<Viewpost> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Viewpost {
  UserId userId;
  String post;
  DateTime postedDate;

  Viewpost({
    required this.userId,
    required this.post,
    required this.postedDate,
  });

  factory Viewpost.fromJson(Map<String, dynamic> json) => Viewpost(
    userId: UserId.fromJson(json["userId"]),
    post: json["post"],
    postedDate: DateTime.parse(json["postedDate"]),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId.toJson(),
    "post": post,
    "postedDate": postedDate.toIso8601String(),
  };
}

class UserId {
  String name;
  String mobile;
  String address;

  UserId({
    required this.name,
    required this.mobile,
    required this.address,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
    name: json["name"],
    mobile: json["mobile"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "mobile": mobile,
    "address": address,
  };
}
