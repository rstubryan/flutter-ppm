import 'package:flutter/material.dart';
import 'package:flutter_mysql_express/utils/app_colors.dart';
import 'package:flutter_mysql_express/widgets/button_widget.dart';
import 'package:flutter_mysql_express/screens/all_tasks.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "\nIt's a good day ain't it?",
                    style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            ButtonWidget(
                backgroundcolor: AppColors.mainColor,
                text: "Add task",
                textColor: Colors.white),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => AllTasks(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1));
              },
              child: ButtonWidget(
                  backgroundcolor: Colors.white,
                  text: "View All",
                  textColor: AppColors.smallTextColor),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/welcome.jpg"),
          ),
        ),
      ),
    );
  }
}
