import 'package:blissme/data/models/carousel.dart';
import 'package:blissme/data/models/services.dart';

class AllServices {
  bool? status;
  List<Carousel>? carousel;
  List<Services>? services;


  AllServices({
      bool? status,
      List<Carousel>? carousel,
      List<Services>? services}){
    status = status;
    carousel = carousel;
    services = services;
}

  AllServices.fromJson(dynamic json) {
    status = json['status'];
    if (json['carousel'] != null) {
      carousel = [];
      json['carousel'].forEach((v) {
        carousel!.add(Carousel.fromJson(v));
      });
    }
    if (json['services'] != null) {
      services = [];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = status;
    if (carousel != null) {
      map['carousel'] = carousel!.map((v) => v.toJson()).toList();
    }
    if (services != null) {
      map['services'] = services!.map((v) => v.toJson()).toList();
    }
    return map;
  }


}


