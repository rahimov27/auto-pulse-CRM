
import 'package:auto_pulse_crm/loginPages/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: OnBoardingSlider(
        pageBackgroundColor: const Color(0xff2068F1),
        headerBackgroundColor: const Color(0xff2068F1),
        finishButtonText: 'Register',
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        onFinish: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(color: Colors.white),
        ),
        trailing: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        background: [
          SvgPicture.asset(
              "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/Img_car1.svg"),
          SvgPicture.asset(
              "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/Img_car2.svg"),
          SvgPicture.asset(
              "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/Img_car3.svg"),
          SvgPicture.asset(
              "/Users/r27/StudioProjects/auto_pulse_crm/assets/images/Img_car4.svg"),
        ],
        totalPage: 4,
        speed: 1.8,
        pageBodies: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "Your first car without a driver's license",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Goes to meet people who just got their license',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "Always there: more than 1000 cars in Tbilisi",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Our company is a leader by the number of cars in the fleet',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "Do not pay for parking, maintenance and gasoline",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We will pay for you, all expenses related to the car',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "29 car models: from Skoda Octavia to Porsche 911",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Choose between regular car models or exclusive ones',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
