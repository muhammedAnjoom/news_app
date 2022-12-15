import 'package:flutter/material.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/view/detalis/topButtons.dart';

import 'fullScreen_slider.dart';

final List<String> imageList = [
  'https://images.unsplash.com/photo-1613405550625-e11c7d2221e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
  'https://images.unsplash.com/photo-1603995228115-df0e33ee5514?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1657100027726-337934359676?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=729&q=80'
];

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 90,
            child: Stack(
              children: [
                const FullScreenSlider(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    height: SizeConfig.blockSizeVertical! * 44,
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
                            "Unravel mysteries of the Maldives",
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
                                  "Keanu Carpent May 17 • 8 min read",
                                  style: kPoppinsMedium.copyWith(color: KGrey),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text(
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
