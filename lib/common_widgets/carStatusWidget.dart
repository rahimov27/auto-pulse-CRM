import 'package:auto_pulse_crm/common_widgets/cardSvgWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:auto_pulse_crm/ui/CarDetails.dart';
import 'package:flutter/material.dart';

class CarStatus extends StatelessWidget {
  const CarStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CarDetails(),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.949,
          height: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
                color: AppColors.carCardBorder,
                width: 1.2,
                style: BorderStyle.solid),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Mercedes SL 63',
                      style: AppFonts.cardCarTitle,
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 116,
                        height: 35,
                        color: const Color(0xff1463FF),
                        child: const Center(
                          child: Text(
                            'Repair',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CardSvgParamterWidget(
                      text: '585 hp',
                      svg:
                          '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/card-part-svg/jam_gps-f.svg',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CardSvgParamterWidget(
                      text: 'Automatic',
                      svg:
                          '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/card-part-svg/bxs_gas-pump.svg',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    CardSvgParamterWidget(
                      text: 'Seats',
                      svg:
                          '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/card-part-svg/bxs_gas-pump-2.svg',
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                      width: double.infinity,
                      height: 146,
                      fit: BoxFit.cover,
                      '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/card-part-svg/mercedes.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
