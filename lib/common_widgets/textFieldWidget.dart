import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.borderColorTextField,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.borderColorTextField,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.borderColorTextField,
            width: 2.0, // Optionally set the width of the border
          ),
        ),
        labelText: text,
        labelStyle: const TextStyle(
          color: AppColors.textFieldColor, // Optional: set the label text color
        ),
      ),
    );
  }
}
