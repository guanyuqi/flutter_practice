import 'dart:convert';

NewsModel NewsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String NewsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  NewsModel({
    this.title,
    this.img,
    this.date,
  });

  String title;
  String img;
  DateTime date;

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json["title"],
        img: json["img"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
      };
}
