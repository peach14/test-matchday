import 'dart:convert';

import 'package:flutter/material.dart';

List<FifaType> fifaTypeFromJson(List<dynamic> str) =>
    List<FifaType>.from(str.map((x) => FifaType.fromJson(json: x))).toList();

String fifaTypeToJson(List<FifaType> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FifaType {
  String name;
  Icon icon;
  bool status;

  FifaType({required this.name, required this.icon, required this.status});

  factory FifaType.fromJson({required Map<String, dynamic> json}) => FifaType(
        name: json["name"],
        icon: json["icon"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "icon": icon,
        "status": status,
      };
}
