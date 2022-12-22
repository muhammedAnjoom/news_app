import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/style/app_style.dart';


import 'view/detalis/detalis_screen.dart';
import 'view/home/home_screen.dart';
import 'view/widgets/custom_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  // This widget is the root of your application.
  final NewsController newsController = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body:  HomeScreen(),
        bottomNavigationBar: const CustomBottomBar(),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}
