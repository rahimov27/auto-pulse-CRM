import 'package:auto_pulse_crm/common_widgets/buttonWidget.dart';
import 'package:auto_pulse_crm/common_widgets/socialIconWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome back! Glad to see you, Again!",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff2068F1),
                    fontWeight: FontWeight.w600),
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
              const SizedBox(height: 15),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8391A1),
                      ),
                      suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text("Forgot Password?"),
                  ),
                ],
              ),
              ButtonWidget(
                textColor: Colors.white,
                function: () {},
                color: AppColors.buttonColor,
                text: "Login",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 111,
                    height: 1,
                    color: const Color(0xffE8ECF4),
                  ),
                  const Text("Or Login with"),
                  Container(
                    width: 111,
                    height: 1,
                    color: const Color(0xffE8ECF4),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialIconWidget(
                    image: "assets/images/social_networks/facebook_ic.svg",
                  ),
                  SocialIconWidget(
                    image: "assets/images/social_networks/google_ic.svg",
                  ),
                  SocialIconWidget(
                    image: "assets/images/social_networks/cib_apple.svg",
                  ),
                ],
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
