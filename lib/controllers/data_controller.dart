import 'package:flutter_mysql_express/services/service.dart';
import 'package:flutter_mysql_express/utils/app_constants.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;
  Future<void> getData() async {
    _isLoading = true;
    Response response = await service.getData(AppConstants.GET_TASKS);
    if (response.statusCode == 200) {
      _myData = response.body;
      print("We got the data");
      update();
    } else {
      print("We did not get any data. Response: ${response.body}");
      print("Response Headers: ${response.headers}");
    }
  }

  Future<void> postData(String task, String taskDetail) async {
    _isLoading = true;
    Response response = await service.postData(AppConstants.POST_TASKS, {
      "task": task,
      "task_detail": taskDetail,
    });
    if (response.statusCode == 200) {
      update();
      print("Data post successfully");
    } else {
      print("Data post failed");
    }
  }
}
