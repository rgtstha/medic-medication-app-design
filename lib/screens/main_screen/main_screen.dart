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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
        child: MainScreenItem.items.elementAt(currentIndex).screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColor.backgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: MainScreenItem.items
            .map((e) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  e.iconPath,
                  height: 20,
                  color: AppColor.white60,
                ),
                label: e.label,
                activeIcon: SvgPicture.asset(
                  e.iconPath,
                  height: 24,
                  color: AppColor.white,
                  fit: BoxFit.fitHeight,
                )))
            .toList(growable: false),
        onTap: (value) {
          setState(() => currentIndex = value);
        },
      ),
    );
  }
}

class MainScreenItem {
  final Widget screen;
  final String label;
  final String iconPath;

  MainScreenItem({
    required this.screen,
    required this.label,
    required this.iconPath,
  });

  static List<MainScreenItem> items = [
    MainScreenItem(
      screen: const HomeScreen(),
      label: "Home",
      iconPath: 'assets/images/logo.svg',
    ),
    MainScreenItem(
      screen: const SoundScreen(),
      label: "Sound",
      iconPath: 'assets/icons/sound.svg',
    ),
    MainScreenItem(
      screen: const ProfileScreen(),
      label: "Profile",
      iconPath: 'assets/icons/profile.svg',
    )
  ];
}
