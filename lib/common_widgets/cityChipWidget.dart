import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class CityChipWidget extends StatelessWidget {
  const CityChipWidget({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  final String text;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? Colors.transparent : Color(0xffE1E1E1),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 37,
              color: isActive ? AppColors.buttonColor : Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    text,
                    style: AppFonts.forChipText.copyWith(
                      color: isActive ? Colors.white : Color(0xff525252),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
