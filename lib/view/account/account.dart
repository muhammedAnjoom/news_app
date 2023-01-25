import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              ),
              kHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Elly's Post",
                    style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4.5),
                  ),
                  Text(
                    "View All",
                    style: kPoppinsMedium.copyWith(
                        color: KBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.2),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      margin: EdgeInsets.only(
                          bottom: SizeConfig.blockSizeVertical! * 2.5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 24,
                                    spreadRadius: 0,
                                    offset: const Offset(0, 3),
                                    color: KDarkBlue.withOpacity(0.051))
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1519638399535-1b036603ac77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeVertical! * 2.5,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "News: Polites",
                                  style: kPoppinsRegular.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.5,
                                      color: KGrey),
                                ),
                                Text(
                                  "Iran's raging protests Fith Irain paramiliary me..",
                                  style: kPoppinsBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.7,
                                      color: KDarkBlue),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/calendar.svg",
                                      color: KGrey,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "16th May",
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3.3,
                                        color: KGrey,
                                      ),
                                    ),
                                    const Spacer(),
                                    SvgPicture.asset(
                                      "assets/icons/clock.svg",
                                      color: KGrey,
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "10:15 am",
                                      style: kPoppinsRegular.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3.3,
                                        color: KGrey,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular From Elly",
                    style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4.5),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 143,
                      width: 248,
                      margin: EdgeInsets.only(
                          right: SizeConfig.blockSizeHorizontal! * 2.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1552378530-1c3caefe31db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
