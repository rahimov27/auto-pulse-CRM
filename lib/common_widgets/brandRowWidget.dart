import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class BrandRow extends StatelessWidget {
  const BrandRow({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(
            title,
            style: AppFonts.titletext,
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: AppFonts.seeMore,
            ),
          ),
        ],
      ),
    );
  }
}
