import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/app_style.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 55),
            padding: const EdgeInsets.only(left: 5),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(color: kwhite, width: 1.5),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: kwhite,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(top: 55, right: 20),
            padding: const EdgeInsets.all(10),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(color: kwhite, width: 1.5),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              color: kwhite,
            ),
          ),
        ),
      ],
    );
  }
}