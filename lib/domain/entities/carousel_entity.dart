import 'package:equatable/equatable.dart';

class CarouselEntity extends Equatable{
  String? image;
  String? type;
  int? id;

  CarouselEntity({this.image, this.type, this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [image,type,id];


}