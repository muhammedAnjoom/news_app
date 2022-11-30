import 'package:flutter/material.dart';
import 'package:news_app/style/size_config.dart';

import '../../style/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Row(
            children: [
              Container(
                width: 51,
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: KLightBlue,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://cdn3d.iconscout.com/3d/premium/thumb/young-businessman-avatar-5692602-4743371.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back!",
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    "Monday,3 October",
                    style: kPoppinsRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        color: KGrey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kwhite,
                boxShadow: [
                  BoxShadow(
                      color: KDarkBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3),
                      blurRadius: 24,
                      spreadRadius: 0)
                ]),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: KBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article..',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      focusedBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                          color: KLightGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
