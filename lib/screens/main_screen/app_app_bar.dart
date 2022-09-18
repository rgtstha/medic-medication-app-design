import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_sizes.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/hamburger.svg',
          height: AppSizes.s20,
        ),
      ),
      centerTitle: true,
      title: SvgPicture.asset(
        "assets/images/logo.svg",
        height: AppSizes.s40,
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
            backgroundImage:
                NetworkImage("https://picsum.photos/id/1011/200/300"),
          ),
        ),
        const SizedBox(width: AppSizes.globalHPadding * 0.5)
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + AppSizes.s14);
}
