import 'package:flutter/material.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';
import 'package:news_app/view/detalis/topButtons.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails(
      {Key? key,
      this.imgUrl,
      this.title,
      this.author,
      this.content,
      this.month,
      this.day})
      : super(key: key);

  final String? imgUrl;
  final String? title;
  final String? author;
  final String? content;
  final String? month;
  final String? day;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 100,
            child: Stack(
              children: [
                // const FullScreenSlider(),
                Image.network(
                  imgUrl ??
                      "https://images.unsplash.com/photo-1613405550625-e11c7d2221e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
                  fit: BoxFit.fill,
                  height: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    height: SizeConfig.blockSizeVertical! * 60,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33),
                        topRight: Radius.circular(33),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            title ?? "Unravel mysteries of the Maldives",
                            style: kPoppinsBold.copyWith(
                              fontSize: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffEBE7E7),
                                width: 1,
                              ),
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius),
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80"),
                                  ),
                                ),
                                Text(
                                  author!.length > 20
                                      ? "${author!.substring(0, 15)} $month.$day"
                                      : "$author $month.$day",
                                  style: kPoppinsMedium.copyWith(color: KGrey),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            content ??
                                "On December 11,  Switzerland’s GoldenPass Express did not halt at Zweisimmen, where trains on the route usually stop to allow passengers to switch trains owing to the change in gauge. Thanks to its new design, the Express can now run on different gauges and adjust the height of its coaches to access different platforms.",
                            style: kPoppinsMedium.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const TopButtons()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
