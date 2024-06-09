import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardSvgParamterWidget extends StatelessWidget {
  const CardSvgParamterWidget(
      {super.key, required this.svg, required this.text});

  final String text;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svg),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: AppFonts.cardCarSvgText,
        ),
        const SizedBox(width: 12),
        Container(
          height: 24,
          width: 1,
          color: const Color(0xff8C8BA7).withOpacity(0.20),
        )
      ],
    );
  }
}
