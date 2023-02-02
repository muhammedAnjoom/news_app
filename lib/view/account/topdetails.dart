import 'package:flutter/material.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';

class TopDetalis extends StatelessWidget {
  const TopDetalis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}