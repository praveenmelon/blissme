import 'package:equatable/equatable.dart';

class ServicesEntity extends Equatable{
  int? serviceId;
  String? serviceName;
  int? spaCount;

  ServicesEntity({this.serviceId, this.serviceName, this.spaCount});

  @override
  // TODO: implement props
  List<Object?> get props => [serviceId,serviceName,spaCount];


}