import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/bottom_navigation_controller.dart';
import 'package:news_app/view/home/home_screen.dart';
import 'package:news_app/view/widgets/custom_bottom_bar.dart';

import '../account/account.dart';
import '../bookMark/book_mark.dart';
import '../notflication/notflication.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  // using bottom navigation controller
  BottomNavigationBarController bottomNavigationBarController =
      Get.put(BottomNavigationBarController());
  // different screens
  final screens = [
    HomeScreen(),
    const SaveNewsScreen(),
    const NotflicationScreen(),
    const AccountDetails()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final selectedIndex = bottomNavigationBarController.selectedIndex.value;
      final changeIndex = bottomNavigationBarController.changeIndex;
      return Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: CustomBottomBar(
          onItemTapped: changeIndex,
          selectedIndex: selectedIndex,
        ),
      );
    });
  }
}
