import 'package:auto_pulse_crm/common_widgets/buttonWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff2068F1),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff8391A1),
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 57),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xff8391A1),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonWidget(
                text: "Send code",
                color: AppColors.buttonColor,
                function: () {},
                textColor: Colors.black,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 15, color: Color(0xff2068F1)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff35C2C1),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
