// To parse this JSON data, do
//
//     final thriftEntry = thriftEntryFromJson(jsonString);

import 'dart:convert';

List<ThriftEntry> thriftEntryFromJson(String str) => List<ThriftEntry>.from(json.decode(str).map((x) => ThriftEntry.fromJson(x)));

String thriftEntryToJson(List<ThriftEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ThriftEntry {
    String model;
    String pk;
    Fields fields;

    ThriftEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ThriftEntry.fromJson(Map<String, dynamic> json) => ThriftEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    DateTime time;
    String name;
    int price;
    String description;
    String condition;

    Fields({
        required this.user,
        required this.time,
        required this.name,
        required this.price,
        required this.description,
        required this.condition,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        time: DateTime.parse(json["time"]),
        name: json["name"],
        price: json["price"],
        description: json["description"],
        condition: json["condition"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "name": name,
        "price": price,
        "description": description,
        "condition": condition,
    };
}
