class UsersModel {
    String name;
    String image;
    int id;

    UsersModel({
        this.name,
        this.image,
        this.id,
    });

    factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        name: json["name"],
        image: json["image"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "id": id,
    };
}
