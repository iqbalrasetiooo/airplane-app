import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 65,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: bold,
                      ),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetail() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            // NOTE: DESTINATION TILE
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 4),
                      child: Image.asset(
                        'assets/icon_star.png',
                      ),
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontWeight: semibold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            route(),
            bookingDetail(),
          ],
        ),
      ),
    );
  }
}
