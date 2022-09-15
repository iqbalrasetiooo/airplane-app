import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;
  final double mTop;
  final double mBot;

  const BookingDetailItem({
    Key? key,
    required this.title,
    this.valueColor = kBlackColor,
    required this.valueText,
    this.mBot = 0,
    this.mTop = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: mTop, bottom: mBot),
      child: Row(
        children: [
          InterestItem(title: title),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
