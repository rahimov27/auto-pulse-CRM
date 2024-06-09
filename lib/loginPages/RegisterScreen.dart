import 'package:auto_pulse_crm/common_widgets/buttonWidget.dart';
import 'package:auto_pulse_crm/common_widgets/socialIconWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  hintText: "Username",
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
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8391A1),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
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
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm password",
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
                  const SizedBox(height: 20),
                ],
              ),
              ButtonWidget(
                textColor: Colors.black,
                function: () {},
                color: AppColors.buttonColor,
                text: "Agree and Register",
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
                    image:
                        "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/social_networks/facebook_ic.svg",
                  ),
                  SocialIconWidget(
                    image:
                        "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/social_networks/google_ic.svg",
                  ),
                  SocialIconWidget(
                    image:
                        "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/social_networks/cib_apple.svg",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
