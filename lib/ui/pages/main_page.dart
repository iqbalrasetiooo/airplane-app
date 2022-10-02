import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int index) {
      switch (index) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
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
                index: 0,
                imgUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigation(
                index: 1,
                imgUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigation(
                index: 2,
                imgUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigation(
                index: 3,
                imgUrl: 'assets/fi_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(builder: (context, currentIndex) {
      return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        ),
      );
    });
  }
}
