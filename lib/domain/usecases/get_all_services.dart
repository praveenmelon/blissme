import 'package:blissme/data/models/all_services.dart';
import 'package:blissme/domain/repositories/blissme_repositories.dart';
import 'package:dartz/dartz.dart';

import 'package:blissme/domain/entities/app_error.dart';

import 'package:blissme/domain/entities/no_params.dart';
import 'package:blissme/domain/usecases/usecase.dart';

class GetAllServices extends UseCase<AllServices, NoParams> {
  final BlissMeRepository repository;

  GetAllServices(this.repository);

  Future<Either<AppError, AllServices>> call(NoParams noParams) async {
    return await repository.getAllServices();
  }
}
