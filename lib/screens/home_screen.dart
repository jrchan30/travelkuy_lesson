import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:travelkuy_lesson/constants/color_constant.dart';
import 'package:travelkuy_lesson/constants/style_constant.dart';
import 'package:travelkuy_lesson/models/carousel_model.dart';
import 'package:travelkuy_lesson/widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            //Promo Section
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Hi Franklin 👋 This Promos for you',
                style: mTitleStyle,
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 190,
                          child: Swiper(
                            onIndexChanged: (index) {
                              setState(() {
                                _current = index;
                              });
                            },
                            autoplay: true,
                            layout: SwiperLayout.DEFAULT,
                            itemCount: carousels.length,
                          ))
                    ]))
          ],
        ),
      ),
    );
  }
}
