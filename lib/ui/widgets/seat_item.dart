import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class SeatItem extends StatelessWidget {
  /*
  STATUS NOTE: 
  0. Available
  1. Selected
  2. Unavaiblable
  */

  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semibold),
            ),
          );
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        border: Border.all(
          color: borderColor(),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: child(),
    );
  }
}
