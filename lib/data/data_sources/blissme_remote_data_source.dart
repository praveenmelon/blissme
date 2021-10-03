import 'package:blissme/data/core/api_client.dart';
import 'package:blissme/data/models/all_services.dart';

abstract class BlissMeRemoteDataSource{
  Future<AllServices> getAllServices();
}

class BlissMeRemoteDataSourceImpl extends BlissMeRemoteDataSource {
  final ApiClient _client;

  BlissMeRemoteDataSourceImpl(this._client);

  @override
  Future<AllServices> getAllServices() async {
    AllServices services;
    final response = await _client.get('/public/api/services');
    services = AllServices.fromJson(response);
    return services;
  }

}