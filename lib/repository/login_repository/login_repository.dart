

import 'package:getx_mvvm/data/network/network_api_services.dart';

class LoginRepository {

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(){
    dynamic response = _apiService.postApi(data, url);
    return response;
  }
}