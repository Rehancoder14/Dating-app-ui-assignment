import 'dart:convert';

PeopleModel peopleModelFromJson(String str) =>
    PeopleModel.fromJson(json.decode(str));

String peopleModelToJson(PeopleModel data) => json.encode(data.toJson());

class PeopleModel {
  int? id;
  String? name;
  String? imgurl;
  String? profession;
  String? hobby;

  PeopleModel({
    this.id,
    this.name,
    this.imgurl,
    this.profession,
    this.hobby,
  });

  factory PeopleModel.fromJson(Map<String, dynamic> json) => PeopleModel(
        id: json["id"],
        name: json["name"],
        imgurl: json["imgurl"],
        profession: json["profession"],
        hobby: json["hobby"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "imgurl": imgurl,
        "profession": profession,
        "hobby": hobby,
      };
}
