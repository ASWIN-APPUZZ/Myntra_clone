import 'sub_category.dart';

class MainCategory {
  String id;
  String name;
  String desc;
  String imageUrl;
  String backgroundColor;
  List<SubCategory> subCategory;

  MainCategory({
    required this.id,
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.backgroundColor,
    required this.subCategory,
  });

  factory MainCategory.fromJson(Map<String, dynamic> json) => MainCategory(
        id: json["_id"],
        name: json["name"],
        desc: json["desc"],
        imageUrl: json["imageUrl"],
        backgroundColor: json["backgroundColor"],
        subCategory: List<SubCategory>.from(
            json["subCategory"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "desc": desc,
        "imageUrl": imageUrl,
        "backgroundColor": backgroundColor,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
      };
}
