import 'package:airplane/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

import '../widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
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
        bottom: false,
        child: Stack(
          children: [
            HomePage(),
            customBottomNavigation(),
          ],
        ),
      ),
    );
  }
}
