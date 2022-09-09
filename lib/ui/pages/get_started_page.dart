import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/bg.png'),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  textAlign: TextAlign.center,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    height: 1.5,
                  ),
                ),
                CustomButton(
                  paddingTop: 50,
                  paddingBottom: 80,
                  title: 'Get Started',
                  width: 220,
                  onpressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
