import 'package:flutter_mysql_express/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message {
  static void taskErrorOrWarning(String taskName, String taskErrorOrWarning) {
    Get.snackbar(
      taskName,
      taskErrorOrWarning,
      backgroundColor: AppColors.mainColor,
      titleText: Text(
        taskName,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        taskErrorOrWarning,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
