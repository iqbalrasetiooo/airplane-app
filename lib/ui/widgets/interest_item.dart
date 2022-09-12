import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String title;
  const InterestItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: regular),
          )
        ],
      ),
    );
  }
}
