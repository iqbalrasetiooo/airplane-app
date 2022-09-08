import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  final String imgUrl;
  final bool isActive;
  const CustomBottomNavigation(
      {Key? key, required this.imgUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl),
            ),
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isActive ? kPrimaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ],
    );
  }
}
