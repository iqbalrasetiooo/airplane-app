import 'package:airplane/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  /*
  STATUS NOTE: 
  0. Available
  1. Selected
  2. Unavaiblable
  */

  final String id;
  final bool isAvailable;
  const SeatItem({
    Key? key,
    this.isAvailable = true,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(fontWeight: semibold),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
      ),
    );
  }
}
