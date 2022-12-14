import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

import '../../models/destination_model.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const DestinationCard({
    required this.destination,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destination),
          ),
        );
      },
      child: Container(
        height: 323,
        width: 200,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        margin: EdgeInsets.only(
          left: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: NetworkImage(destination.imageUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                  ),
                  child: Row(
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
                        destination.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: semibold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.name,
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semibold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  destination.city,
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
