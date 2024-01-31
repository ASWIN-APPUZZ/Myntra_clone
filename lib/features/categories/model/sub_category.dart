import '../ui/last_category.dart';
import 'dart:convert'; 


class SubCategory {
    String name;
    String imageUrl;
    bool isExpandable;
    List<LastCategory> lastCategory;
    String id;

    SubCategory({
        required this.name,
        required this.imageUrl,
        required this.isExpandable,
        required this.lastCategory,
        required this.id,
    });

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        name: json["name"],
        imageUrl: json["imageUrl"],
        isExpandable: json["isExpandable"],
        lastCategory:List<LastCategory>.from(json["lastCategory"].map((x) => LastCategory.fromJson(x))),
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "isExpandable": isExpandable,
        "lastCategory": List<dynamic>.from(lastCategory.map((x) => x.toJson())),
        "_id": id,
    };
}