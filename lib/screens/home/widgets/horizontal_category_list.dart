import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/category_model.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_sizes.dart';
import '../../../widgets/sliver_sized_box.dart';




class HorizontalCategoryList extends StatelessWidget {
  const HorizontalCategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverSizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: CategoryModel.categories
            .map(
              (e) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: AppSizes.s70,
                    width: AppSizes.s65,
                    margin: const EdgeInsets.only(bottom: AppSizes.s10),
                    padding: const EdgeInsets.all(AppSizes.s14),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(AppSizes.s20),
                    ),
                    child: SvgPicture.asset(e.iconPath),
                  ),
                  Text(e.name),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
