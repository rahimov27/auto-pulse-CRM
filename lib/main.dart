import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/ui/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      home: const SplashScreen(),
    );
  }
}
