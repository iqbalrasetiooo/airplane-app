import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double paddingTop;
  final double paddingRight;
  final double paddingLeft;
  final double paddingBottom;
  final Function() onpressed;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onpressed,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingLeft = 0,
    this.paddingRight = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: paddingTop,
        bottom: paddingBottom,
        left: paddingLeft,
        right: paddingRight,
      ),
      height: 55,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
