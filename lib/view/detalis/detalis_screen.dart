import 'package:flutter/material.dart';
import 'package:news_app/style/app_style.dart';
import 'package:news_app/style/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/view/detalis/topButtons.dart';

import 'fullScreen_slider.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: const[
               FullScreenSlider(),
              TopButtons()
            ],
          )
        ],
      ),
    );
  }
}



final List<String> imageList = [
  'https://images.unsplash.com/photo-1613405550625-e11c7d2221e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
  'https://images.unsplash.com/photo-1603995228115-df0e33ee5514?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1657100027726-337934359676?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=729&q=80'
];


