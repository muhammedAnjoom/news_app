import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/app_style.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key, this.onItemTapped, this.selectedIndex})
      : super(key: key);

  final onItemTapped;
  final selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kwhite,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 25,
                  width: 25,
                )
              : SvgPicture.asset(
                  'assets/icons/home_un.svg',
                  height: 25,
                  width: 25,
                ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? SvgPicture.asset(
                  'assets/icons/user.svg',
                  height: 25,
                  width: 25,
                )
              : SvgPicture.asset(
                  'assets/icons/user_un.svg',
                  height: 25,
                  width: 25,
                ),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
