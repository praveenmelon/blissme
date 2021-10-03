import 'package:blissme/data/models/all_services.dart';
import 'package:blissme/domain/entities/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class BlissMeRepository{
  Future<Either<AppError, AllServices>> getAllServices();
}