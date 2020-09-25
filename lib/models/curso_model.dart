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

// class Category {
//   Category({
//     this.title = '',
//     this.imagePath = '',
//     this.lessonCount = 0,
//     this.money = 0,
//     this.rating = 0.0,
//   });

//   String title;
//   int lessonCount;
//   int money;
//   double rating;
//   String imagePath;

//   static List<Category> categoryList = <Category>[
//     Category(
//       imagePath: 'assets/design_course/interFace1.png',
//       title: 'User interface Design',
//       lessonCount: 24,
//       money: 25,
//       rating: 4.3,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace2.png',
//       title: 'User interface Design',
//       lessonCount: 22,
//       money: 18,
//       rating: 4.6,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace1.png',
//       title: 'User interface Design',
//       lessonCount: 24,
//       money: 25,
//       rating: 4.3,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace2.png',
//       title: 'User interface Design',
//       lessonCount: 22,
//       money: 18,
//       rating: 4.6,
//     ),
//   ];

//   static List<Category> popularCourseList = <Category>[
//     Category(
//       imagePath: 'assets/design_course/interFace3.png',
//       title: 'App Design Course',
//       lessonCount: 12,
//       money: 25,
//       rating: 4.8,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace4.png',
//       title: 'Web Design Course',
//       lessonCount: 28,
//       money: 208,
//       rating: 4.9,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace3.png',
//       title: 'App Design Course',
//       lessonCount: 12,
//       money: 25,
//       rating: 4.8,
//     ),
//     Category(
//       imagePath: 'assets/design_course/interFace4.png',
//       title: 'Web Design Course',
//       lessonCount: 28,
//       money: 208,
//       rating: 4.9,
//     ),
//   ];
// }
