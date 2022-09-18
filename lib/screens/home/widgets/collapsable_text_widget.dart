import 'package:flutter/material.dart';

import '../../../theme/app_color.dart';
import '../../../theme/app_sizes.dart';

class CollapseableTextWidget extends StatelessWidget {
  const CollapseableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SliverAppBar(
      expandedHeight: AppSizes.s100,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome back, Afreen!",
              style: textTheme.displaySmall?.copyWith(
                fontSize: AppSizes.s32,
              ),
            ),
            Text(
              "How are you feeling today?",
              style: textTheme.bodyLarge?.copyWith(
                color: AppColor.white70,
                fontSize: AppSizes.s20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
