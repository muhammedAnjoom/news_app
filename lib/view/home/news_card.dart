import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/article_model.dart';
import 'package:intl/intl.dart';
import 'package:news_app/view/detalis/detalis_screen.dart';
import '../../style/app_style.dart';
import '../../style/size_config.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news, required this.author});
  final Article news;
  final String author;
  @override
  Widget build(BuildContext context) {
    // api published date split in to part
    var date = news.publishedAt!.split('T');
    // date split in year,month,day
    var dateSplit = date[0].split('-');
    // Convert Integer To Month 1=> jan
    var month = DateFormat('MMM').format(DateTime(0, int.parse(dateSplit[1])));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      padding: const EdgeInsets.all(12),
      height: 384,
      width: 255,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kwhite,
        boxShadow: [
          BoxShadow(
            color: KDarkBlue.withOpacity(0.051),
            offset: const Offset(0.0, 5),
            blurRadius: 29,
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => NewsDetails(
                    imgUrl: news.urlToImage.toString(),
                    title: news.title.toString(),
                    author: author,
                    content: news.content.toString(),
                    month: month,
                    day: dateSplit[2]),
              ),
            ),
            child: Container(
              height: 164,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(news.urlToImage ??
                      'https://i.pinimg.com/originals/37/66/03/3766030538e87b789a4de14e0c796083.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Flexible(
            child: Text(
              news.title ??
                  "Inside the first China-Switzerland Stock Connect GDR deals",
              style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 19,
                    backgroundColor: KBlue,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        author.length > 20
                            ? "${author.substring(0, 15)}.."
                            : author,
                        style: kPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "$month ${dateSplit[2]} ${dateSplit[0]}",
                        style: kPoppinsRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: KGrey),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kLightWhite),
                child: const Icon(
                  Icons.share,
                  color: KBlue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
