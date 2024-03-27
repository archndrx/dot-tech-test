import 'package:dot_tech_test/shared/theme.dart';
import 'package:flutter/material.dart';

class HomepageHistory extends StatelessWidget {
  const HomepageHistory(
      {super.key,
      required this.text,
      required this.nominal,
      required this.image});

  final String text;
  final String nominal;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: grayColor.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          image,
          const SizedBox(
            width: 14,
          ),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Text(
            nominal,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semibold,
            ),
          ),
        ],
      ),
    );
  }
}
