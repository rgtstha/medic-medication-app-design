import 'package:flutter/material.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';

import '../../widgets/sliver_sized_box.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverSizedBox(height: AppSizes.s30),
        SliverToBoxAdapter(
          child: CircleAvatar(
            radius: size.width * 0.2,
            backgroundImage: const NetworkImage(
              "https://picsum.photos/id/1011/200/300",
            ),
          ),
        )
      ],
    );
  }
}
