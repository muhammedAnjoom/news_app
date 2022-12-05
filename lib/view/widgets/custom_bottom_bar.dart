import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/app_style.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
  });

  
  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // void _onItemTapped(int index) {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kwhite,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset('assets/icons/home.svg',height: 25,width: 25,)
              : SvgPicture.asset('assets/icons/home_un.svg',height: 25,width: 25,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? SvgPicture.asset('assets/icons/bookmark.svg')
              : SvgPicture.asset('assets/icons/bookmark_un.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? SvgPicture.asset('assets/icons/notification.svg')
              : SvgPicture.asset('assets/icons/notification_un.svg'),
          label: '',
        ),
        
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ? SvgPicture.asset('assets/icons/user.svg',height: 25,width: 25,)
              : SvgPicture.asset('assets/icons/user_un.svg',height: 25,width: 25,),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}