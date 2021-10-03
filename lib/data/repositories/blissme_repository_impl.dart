
import 'dart:io';

import 'package:blissme/data/data_sources/blissme_remote_data_source.dart';
import 'package:blissme/data/models/all_services.dart';
import 'package:blissme/domain/entities/app_error.dart';
import 'package:blissme/domain/repositories/blissme_repositories.dart';
import 'package:dartz/dartz.dart';

class BlissMeRepositoryImpl extends BlissMeRepository {
  final BlissMeRemoteDataSource remoteDataSource;

  BlissMeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, AllServices>> getAllServices() async {
    try {
      final jobs = await remoteDataSource.getAllServices();
      return Right(jobs);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }
}