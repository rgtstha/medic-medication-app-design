import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_medication_app/constants/constants.dart';
import 'package:medic_medication_app/route/route_generator.dart';
import 'package:medic_medication_app/theme/app_color.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: AppSizes.s100,
                color: AppColor.backgroundColor,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Column(
              children: [
                const Spacer(flex: 2),
                Hero(
                  tag: AppConstants.logoHeroTag,
                  child: SvgPicture.asset('assets/images/logo.svg'),
                ),
                const SizedBox(height: AppSizes.s20),
                Text(
                  "Welcome",
                  style: textTheme.displayMedium?.copyWith(fontSize: 34),
                ),
                const SizedBox(height: 5),
                Text(
                  "Do meditation. Stay focused\nLive a healthy life.",
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.s20,
                  ),
                ),
                const Spacer(flex: 2),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.loginSignUpScreen);
                    },
                    child: const Text("Login With Email"),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: textTheme.bodyText1?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: " Sign Up",
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
