import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import '../widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95)
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // NOTE: EMBLEM
            Container(
              height: 24,
              width: 108,
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),
            // NOTE: EMBLEM
            Container(
              margin: const EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.only(right: 4),
                    child: Image.asset(
                      'assets/icon_star.png',
                    ),
                  ),
                  Text(
                    '4.5',
                    style: whiteTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: Description
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali',
                    style: blackTextStyle.copyWith(
                      fontWeight: regular,
                      height: 2,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: PHOTOS
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  Row(
                    children: const [
                      PhotoItem(
                        imageUrl: 'assets/image_photo1.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo2.png',
                      ),
                      PhotoItem(
                        imageUrl: 'assets/image_photo3.png',
                      ),
                    ],
                  ),
                  // NOTE: INTERESTS
                  const SizedBox(
                    height: 20,
                  ),
                  // NOTE: PHOTOS
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(title: 'Kids Park'),
                      InterestItem(title: 'City Museum'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      InterestItem(title: 'Honor Bridge'),
                      InterestItem(title: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semibold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    title: 'Book Now',
                    width: 170,
                    onpressed: () {
                      Navigator.pushNamed(context, '/seat');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
