import 'package:blissme/domain/entities/services_entity.dart';

class Services extends ServicesEntity {
  int? serviceId;
  String? serviceName;
  int? spaCount;
  bool? isSelected;

  Services({this.serviceId, this.serviceName, this.spaCount,this.isSelected = false})
      : super(
            serviceId: serviceId, serviceName: serviceName, spaCount: spaCount);

  factory Services.fromJson(Map<String, dynamic> json) {
    return Services(
        serviceId: json["serviceId"],
        serviceName: json["serviceName"],
        spaCount: json["spaCount"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map["serviceId"] = serviceId;
    map["serviceName"] = serviceName;
    map["spaCount"] = spaCount;
    return map;
  }
}
