import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_medication_app/constants/constants.dart';
import 'package:medic_medication_app/route/route_generator.dart';
import 'package:medic_medication_app/theme/app_color.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then(
      (_) => Navigator.of(context).pushNamedAndRemoveUntil(
          RouteGenerator.onboardingScreen, (route) => false),
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                height: AppSizes.s100,
                color: AppColor.backgroundColor,
              )
            ],
          ),
          Center(
            child: FadeIn(
              delay: const Duration(milliseconds: 200),
              child: Hero(
                tag: AppConstants.logoHeroTag,
                child: SvgPicture.asset('assets/images/logo.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
