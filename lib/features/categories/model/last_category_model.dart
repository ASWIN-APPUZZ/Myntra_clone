class LastCategory {
    String name;
    String id;

    LastCategory({
        required this.name,
        required this.id,
    });

    factory LastCategory.fromJson(Map<String, dynamic> json) => LastCategory(
        name: json["name"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "_id": id,
    };
}