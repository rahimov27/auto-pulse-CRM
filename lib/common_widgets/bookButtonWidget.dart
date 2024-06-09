import 'package:auto_pulse_crm/common_widgets/buttonWidget.dart';
import 'package:auto_pulse_crm/common_widgets/textFieldWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BookButtonWidget extends StatelessWidget {
  const BookButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, // Text color
          backgroundColor: AppColors.buttonColor, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0), // Button border radius
          ),
        ),
        onPressed: () {
          showCupertinoModalBottomSheet(
            context: context,
            enableDrag: true,
            barrierColor: Colors.black.withOpacity(0.50),
            builder: (context) => Material(
              child: SingleChildScrollView(
                child: Container(
                  height: 367,
                  color:
                      Colors.white, // Set the background color of the container
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            width: 60,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Book Now',
                            style: AppFonts.cardCarPrice.copyWith(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextFieldWidget(text: "Email"),
                        const SizedBox(height: 10),
                        const TextFieldWidget(text: "Phone"),
                        const SizedBox(height: 10),
                        ButtonWidget(
                          text: "Book Now",
                          textColor: Colors.white,
                          color: AppColors.buttonColor,
                          function: () {},
                        ),
                        const SizedBox(height: 10),
                        ButtonWidget(
                          textColor: const Color(0xff1463FF),
                          text: "Back",
                          color: const Color(0xffF7F2F2),
                          function: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: const Text('Book Now'),
      ),
    );
  }
}
