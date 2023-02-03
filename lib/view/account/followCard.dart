import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../../style/size_config.dart';

class FollowCard extends StatelessWidget {
  const FollowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                "54.21k",
                style: kPoppinsBold.copyWith(
                    color: kwhite,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4),
              ),
              Text(
                "Followers",
                style: kPoppinsMedium.copyWith(
                    color: kwhite,
                    fontSize:
                        SizeConfig.blockSizeHorizontal! * 3.5),
              ),
            ],
          ),
        ),
        Container(
          width: 0.4,
          height: SizeConfig.blockSizeVertical! * 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: KLighterBlue),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "2.1",
                style: kPoppinsBold.copyWith(
                    color: kwhite,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4),
              ),
              Text(
                "Posts",
                style: kPoppinsMedium.copyWith(
                    color: kwhite,
                    fontSize:
                        SizeConfig.blockSizeHorizontal! * 3.5),
              ),
            ],
          ),
        ),
        Container(
          width: 0.4,
          height: SizeConfig.blockSizeVertical! * 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: KLighterBlue),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "36.40k",
                style: kPoppinsBold.copyWith(
                    color: kwhite,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4),
              ),
              Text(
                "Following",
                style: kPoppinsMedium.copyWith(
                    color: kwhite,
                    fontSize:
                        SizeConfig.blockSizeHorizontal! * 3.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}