import 'package:dot_tech_test/shared/theme.dart';
import 'package:flutter/material.dart';

class HomepageCategory extends StatelessWidget {
  const HomepageCategory(
      {super.key,
      required this.backgroundColor,
      required this.iconUrl,
      required this.text,
      required this.nominal});

  final Color backgroundColor;
  final String iconUrl;
  final String text;
  final String nominal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(18),
      width: 120,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: grayColor.withOpacity(0.4),
            blurRadius: 8,
            spreadRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(48),
              ),
              child: Transform.scale(
                scale: 0.6,
                child: Image.asset(iconUrl),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              text,
              style: grayTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              nominal,
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
