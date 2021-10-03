import 'package:blissme/data/core/api_client.dart';
import 'package:blissme/data/data_sources/blissme_remote_data_source.dart';
import 'package:blissme/data/models/all_services.dart';
import 'package:blissme/data/repositories/blissme_repository_impl.dart';
import 'package:blissme/domain/entities/app_error.dart';
import 'package:blissme/domain/entities/no_params.dart';
import 'package:blissme/domain/repositories/blissme_repositories.dart';
import 'package:blissme/domain/usecases/get_all_services.dart';
import 'package:blissme/presentation/blissme_app.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());

/*  GetAllServices getAllServices = getIt.getItInstance<GetAllServices>();

    final Either<AppError, AllServices> eitherResponse =
    await getAllServices(NoParams());
    eitherResponse.fold((l) {
      print('err');
      print(l);
    }, (r) {
      print('List of cities');
      print(r.carousel);
    });*/


  runApp(BlissMeApp());
}


