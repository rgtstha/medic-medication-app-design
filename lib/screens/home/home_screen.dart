import 'package:flutter/material.dart';

import '../../theme/app_sizes.dart';
import '../../widgets/sliver_sized_box.dart';
import 'widgets/collapsable_text_widget.dart';
import 'widgets/horizontal_category_list.dart';
import 'widgets/meditation_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CollapseableTextWidget(),
        SliverSizedBox(height: AppSizes.s30),
        HorizontalCategoryList(),
        SliverSizedBox(height: AppSizes.s30),
        MeditationList(),
      ],
    );
  }
}
