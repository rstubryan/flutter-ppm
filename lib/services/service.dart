import 'package:flutter_mysql_express/utils/app_constants.dart';
import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData(String uri) async {
    Response response = await get(
      AppConstants.BASE_URL + uri,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return response;
  }

  Future<Response> postData(String uri, dynamic body) async {
    Response response = await post(
      "http://localhost:3000/create",
      body,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return response;
  }
}
