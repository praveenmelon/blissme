import 'package:blissme/domain/entities/carousel_entity.dart';
import 'package:blissme/domain/entities/services_entity.dart';
import 'package:equatable/equatable.dart';

class AllServicesEntity extends Equatable{
  bool? status;
  List<CarouselEntity>? carousel;
  List<ServicesEntity>? services;

  AllServicesEntity({this.status, this.carousel, this.services});

  @override
  // TODO: implement props
  List<Object?> get props => [status,carousel,services];


}