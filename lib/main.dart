import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/style/app_style.dart';

import 'view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
    );
  }
}


