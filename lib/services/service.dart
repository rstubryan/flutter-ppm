import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData() async {
    Response response = await get(
      "http://http://localhost:3000/tasks/",
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return response;
  }
}
