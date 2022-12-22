
// To parse this JSON data, do
//
//     final incomeModel = incomeModelFromJson(jsonString);

import 'dart:convert';

List<IncomeModel> incomeModelFromJson(String str) => List<IncomeModel>.from(json.decode(str).map((x) => IncomeModel.fromJson(x)));

String incomeModelToJson(List<IncomeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IncomeModel {
  IncomeModel({
    this.id,
    this.incomeType,
    this.icon,
    this.color,
  });

  int? id;
  String? incomeType;
  String? icon;
  String? color;

  factory IncomeModel.fromJson(Map<String, dynamic> json) => IncomeModel(
    id: json["id"],
    incomeType: json["income_type"],
    icon: json["icon"],
    color: json["color"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "income_type": incomeType,
    "icon": icon,
    "color": color,
  };
}
