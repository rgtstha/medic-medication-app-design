import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic_medication_app/screens/home/home_screen.dart';
import 'package:medic_medication_app/screens/main_screen/app_app_bar.dart';
import 'package:medic_medication_app/screens/profile/profile_screen.dart';
import 'package:medic_medication_app/screens/sound/sound_screen.dart';
import 'package:medic_medication_app/theme/app_color.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const SoundScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
        child: screens.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: AppColor.backgroundColor,
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 25,
          color: AppColor.white,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 20,
          color: AppColor.primary,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/logo.svg',
              height: 24,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/sound.svg'),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: "",
          ),
        ],
      ),
    );
  }
}
