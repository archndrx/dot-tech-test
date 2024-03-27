import 'package:dot_tech_test/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeExpenses extends StatelessWidget {
  const HomeExpenses(
      {super.key,
      required this.color,
      required this.text,
      required this.nominal});

  final Color color;
  final String text;
  final String nominal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: FittedBox(
        alignment: Alignment.topLeft,
        fit: BoxFit.scaleDown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              nominal,
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
