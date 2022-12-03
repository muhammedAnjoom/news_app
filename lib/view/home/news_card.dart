import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../../style/size_config.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          Container(
            height: 164,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/37/66/03/3766030538e87b789a4de14e0c796083.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Flexible(
            child: Text(
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
                        "Itachi Unchiha",
                        style: kPoppinsBold.copyWith(
                          fontSize:
                              SizeConfig.blockSizeHorizontal! * 3,
                        ),
                      ),
                      Text(
                        "Dec 1,2022",
                        style: kPoppinsRegular.copyWith(
                          fontSize:
                              SizeConfig.blockSizeHorizontal! * 3,
                          color: KGrey
                        ),
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
                  color: kLightWhite
                ),
                child: const Icon(Icons.share,color: KBlue,),
              )
            ],
          )
        ],
      ),
    );
  }
}