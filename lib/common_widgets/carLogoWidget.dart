import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarLogoWidget extends StatelessWidget {
  const CarLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2977,
      height: 104,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(2, 3),
            )
          ],
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/cars-logo/tesla.svg'),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("Tesla"),
          ),
        ],
      ),
    );
  }
}

class brandRowWidget extends StatelessWidget {
  const brandRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text(
            'Brands',
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
