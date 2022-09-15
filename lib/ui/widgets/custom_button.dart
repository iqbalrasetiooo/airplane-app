import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double marginTop;
  final double marginRight;
  final double marginLeft;
  final double marginBottom;
  final Function() onpressed;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onpressed,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        left: marginLeft,
        right: marginRight,
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
