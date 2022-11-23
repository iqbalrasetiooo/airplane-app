import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'We give you early credit so that\n you can buy a flight ticket',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                height: 1.5,
              ),
            ),
          ],
        ),
      );
    }

    Widget bonusCard() {
      return BlocBuilder(builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            height: 211,
            width: 320,
            padding: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: const Offset(0, 10),
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff5445E5),
                  Color(0xff998EFD),
                ],
              ),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          state.user.name,
                          style: whiteTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_plane.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'IDR 280.000.000',
                      style: whiteTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
              text(),
              CustomButton(
                marginTop: 50,
                width: 220,
                title: 'Start Fly Now',
                onpressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
