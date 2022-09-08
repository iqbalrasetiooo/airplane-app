import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

import '../widgets/custom_bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    overflow: TextOverflow.ellipsis,
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
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              name: 'Lake Ciliwung',
              city: 'Tangerang',
              imgUrl: 'assets/image_destination1.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'White Houses',
              city: 'Spain',
              imgUrl: 'assets/image_destination2.png',
              rating: 4.7,
            ),
            DestinationCard(
              name: 'Hill Heyo',
              city: 'Monaco',
              imgUrl: 'assets/image_destination3.png',
              rating: 4.8,
            ),
            DestinationCard(
              name: 'Menarra',
              city: 'Tangerang',
              imgUrl: 'assets/image_destination4.png',
              rating: 5.0,
            ),
            DestinationCard(
              name: 'Payung Teduh',
              city: 'Singapore',
              imgUrl: 'assets/image_destination5.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 140,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            const DestinationTile(
              name: 'Danau Beratan',
              imgUrl: 'assets/image_destination6.png',
              city: 'Singajara',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Sydney Opera',
              imgUrl: 'assets/image_destination7.png',
              city: 'Australia',
              rating: 4.7,
            ),
            const DestinationTile(
              name: 'Roma',
              imgUrl: 'assets/image_destination8.png',
              city: 'Italy',
              rating: 4.8,
            ),
            const DestinationTile(
              name: 'Payung Teduh',
              imgUrl: 'assets/image_destination9.png',
              city: 'Singapore',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Hill Hey',
              imgUrl: 'assets/image_destination10.png',
              city: 'Monaco',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
