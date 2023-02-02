import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';
import 'package:news_app/view/account/followCard.dart';
import 'package:news_app/view/account/topdetails.dart';

import '../../controller/news_controller.dart';
import '../detalis/detalis_screen.dart';
import 'postsDetails.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.put(NewsController());
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
              TopDetalis(),
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
                child: FollowCard(),
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
              PostWidget(
                controller: newsController,
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
                child: Obx(() {
                  if (newsController.isLoading.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final news = newsController.newsList[index];
                        final imageUrl = news.urlToImage;
                        var date = news.publishedAt!.split('T');
                        // date split in year,month,day
                        var dateSplit = date[0].split('-');
                        // Convert Integer To Month 1=> jan
                        var month = DateFormat('MMM')
                            .format(DateTime(0, int.parse(dateSplit[1])));
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => NewsDetails(
                                author: news.author,
                                content: news.content,
                                imgUrl: news.urlToImage,
                                title: news.title,
                                month: month,
                                day: dateSplit[2],
                              ),
                            ),
                          ),
                          child: Container(
                            height: 143,
                            width: 248,
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockSizeHorizontal! * 2.5),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                              child: Image.network(
                                imageUrl ??
                                    "https://images.unsplash.com/photo-1552378530-1c3caefe31db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}






