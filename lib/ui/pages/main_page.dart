import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

import '../widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        width: double.infinity,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Where to fly today?',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 60,
              child: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/image_profile.png'),
              ),
            )
          ],
        ),
      );
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 30,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigation(
                imgUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              CustomBottomNavigation(
                imgUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                imgUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                imgUrl: 'assets/fi_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            header(),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
