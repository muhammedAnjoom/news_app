import 'package:flutter/material.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: KLightBlue,
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://img.freepik.com/premium-psd/3d-cartoon-character-avatar-isolated-3d-rendering_235528-550.jpg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3.3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Elly Bayer",
                              style: kPoppinsBold.copyWith(
                                  color: KDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              "Author & Writer",
                              style: kPoppinsRegular.copyWith(
                                  color: KDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.2),
                            )
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 42,
                              maxWidth: SizeConfig.blockSizeHorizontal! * 30),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              color: KBlue),
                          child: Center(
                            child: Text(
                              "Following",
                              style: kPoppinsRegular.copyWith(
                                  color: kwhite,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              kHeight30,
              Text(
                "Every piece of chocolate i ever are is getting back at me.. desserts are very revengeful..",
                style: kPoppinsRegular.copyWith(
                    color: KGrey,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
              ),
              kHeight30,
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 3,
                    vertical: SizeConfig.blockSizeVertical! * 3.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: KDarkBlue),
                child: Row(
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
                            "2.11k",
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
