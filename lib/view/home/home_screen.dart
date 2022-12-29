import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/style/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../controller/news_controller.dart';
import '../../style/app_style.dart';
import 'news_card.dart';
import 'short_news.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final NewsController newsController = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    // default style
    SizeConfig().init(context);
    // current date in eg: Wednesday, December 28
    final date = DateFormat().add_MMMMEEEEd().format(
          DateTime.now(),
        );
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
                    date,
                    style: kPoppinsRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.3,
                        color: KGrey),
                  )
                ],
              )
            ],
          ),
          kHeight30,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kwhite,
              boxShadow: [
                BoxShadow(
                  color: KDarkBlue.withOpacity(0.051),
                  offset: const Offset(0.0, 3),
                  blurRadius: 24,
                  spreadRadius: 0,
                )
              ],
            ),
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
                ),
                Container(
                  decoration: BoxDecoration(
                    color: KBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: kwhite,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    '#health',
                    style: kPoppinsMedium.copyWith(
                        color: KGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                  ),
                );
              },
            ),
          ),
          kHeight30,
          SizedBox(
            height: 304,
            child: Obx(() {
              if (newsController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final article = newsController.newsList[index];
                    return NewsCard(
                      news: article,
                      author: article.author ?? "Itachi Unchiha",
                    );
                  },
                );
              }
            }),
          ),
          kHeight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Short for you",
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                "View All",
                style: kPoppinsMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.3,
                    color: KBlue),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: Obx(() {
              if (newsController.isLoading.value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    newsController.newsList.shuffle();
                    final top10News = newsController.newsList[index];
                    return ShortNews(
                      imgUrl: top10News.urlToImage,
                      title: top10News.title,
                    );
                  },
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
