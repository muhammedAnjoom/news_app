import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../../style/size_config.dart';

class ShortNews extends StatelessWidget {
  const ShortNews({
    super.key,
    this.imgUrl,
    this.title,
  });
  final String? imgUrl;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      width: 200,
      height: 88,
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(kBorderRadius),
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
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    image:  DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                           imgUrl ?? "https://images.pexels.com/photos/325193/pexels-photo-325193.jpeg"))),
              ),
              const Icon(
                Icons.play_circle_outline_outlined,
                color: kwhite,
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
              child: Column(
            children: [
              Text(
                title ??"Top Trending islands in 2022",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: kPoppinsSemibold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.4),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 20,
                    color: KGrey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "40,758",
                    style: kPoppinsMedium.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.3,
                        color: KGrey),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
