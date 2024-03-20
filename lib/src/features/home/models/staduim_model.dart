import 'package:flutter/cupertino.dart';

List<Staduaim> staDauimListFromJson(List<dynamic> str) =>
    List<Staduaim>.from(str.map((x) => Staduaim.fromJson(x))).toList();

Staduaim staDuimFromJson(Staduaim str) => Staduaim.fromJson(str.toJson());

class Staduaim {
  String name;
  Icon icon;
  Icon proIcon;
  String fifaTypePart;
  String logo;
  String staduim;
  String salary;
  List<GroupImage> gropimage;

  Staduaim({
    required this.name,
    required this.icon,
    required this.proIcon,
    required this.fifaTypePart,
    required this.logo,
    required this.staduim,
    required this.salary,
    required this.gropimage,
  });

  factory Staduaim.fromJson(Map<String, dynamic> json) => Staduaim(
        name: json["name"],
        icon: json["icon"],
        proIcon: json["pro_icon"],
        fifaTypePart: json["part"],
        logo: json["logo"],
        staduim: json["staduim"],
        salary: json["salary"],
        gropimage: List<GroupImage>.from(
            json["gropimage"].map((x) => GroupImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "icon": icon,
        "pro_icon": proIcon,
        "part": fifaTypePart,
        "logo": logo,
        "staduim": staduim,
        "salary": salary,
        "gropimage": List<dynamic>.from(gropimage.map((x) => x.toJson())),
      };
}

class GroupImage {
  String image;

  GroupImage({
    required this.image,
  });

  factory GroupImage.fromJson(Map<String, dynamic> json) => GroupImage(
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
      };
}
