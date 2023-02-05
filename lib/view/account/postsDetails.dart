import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:news_app/controller/news_controller.dart';

import '../../style/app_style.dart';
import '../../style/size_config.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    required this.controller,
    super.key,
  });

  final NewsController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
          final news = controller.newsList[index];
          // pusblished Date 2023-02-05T01:42:00Z formate
          var date = news.publishedAt!.split('T');
          // splite T 2023-02-05 one part 01:42:00Z second
          var time = date[1].split('Z');
          // splite z 01:42:00 one part Z second
          final stringtime = DateFormat.jm().format(
            DateFormat("hh:mm").parse(
              time[0],
            ),
          );
          // covert 17:00:08 to 5:00 PM
          // date split in year,month,day
          var dateSplit = date[0].split('-');
          // Convert Integer To Month 1=> jan
          var month =
              DateFormat('MMM').format(DateTime(0, int.parse(dateSplit[1])));
          var day = dateSplit[2];
          return Container(
            height: 100,
            margin:
                EdgeInsets.only(bottom: SizeConfig.blockSizeVertical! * 2.5),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 24,
                          spreadRadius: 0,
                          offset: const Offset(0, 3),
                          color: KDarkBlue.withOpacity(0.051))
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    child: Image.network(
                      news.urlToImage ??
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
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: KGrey),
                      ),
                      Text(
                        news.title ??
                            "Iran's raging protests Fith Irain paramiliary me..",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.7,
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
                            "${day}th $month",
                            style: kPoppinsRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.3,
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
                            stringtime,
                            style: kPoppinsRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.3,
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
    );
  }
}
