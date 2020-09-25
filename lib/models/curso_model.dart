import 'dart:convert';

class CursoModel {
  int id;
  String name;
  String description;
  int lessons;
  int duration;
  int sits;
  double price;
  double rate;
  String imageUrl;

  CursoModel(
      {this.id,
      this.name,
      this.description,
      this.lessons,
      this.duration,
      this.sits,
      this.rate,
      this.price,
      this.imageUrl});

  factory CursoModel.fromJson(String str) =>
      CursoModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CursoModel.fromMap(Map<String, dynamic> json) => CursoModel(
        id: (json["id"] is int) ? json["id"] : int.parse(json["id"]),
        name: json["name"],
        description: json["description"],
        lessons: json["lessons"],
        duration: json["duration"],
        sits: json["sits"],
        price: json["price"].toDouble(),
        rate: json["rate"].toDouble(),
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "lessons": lessons,
        "duration": duration,
        "sits": sits,
        "price": price,
        "rate": rate,
        "imageUrl": imageUrl,
      };
}
