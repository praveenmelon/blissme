import 'package:blissme/domain/entities/carousel_entity.dart';

class Carousel extends CarouselEntity{
  String? image;
  String? type;
  int? id;


  Carousel({this.image, this.type, this.id})
      : super(
      image: image, type: type, id: id);

  factory Carousel.fromJson(Map<String, dynamic> json) {
    return Carousel(
        image: json["image"],
        type: json["type"],
        id: json["id"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map["image"] = image;
    map["type"] = type;
    map["id"] = id;
    return map;
  }
}