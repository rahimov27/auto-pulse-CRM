import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class CardScrollWidget extends StatelessWidget {
  const CardScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8854,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: AppColors.cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 4,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '25% Off*',
                style: AppFonts.s15ExtraBold,
              ),
              Text(
                "Today's Special",
                style: AppFonts.s22ExtraBold,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 200,
                  child: Text(
                    "Get a Discount for Every Course Order only Valid for Today.!",
                    style: AppFonts.s13ExtraBold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
