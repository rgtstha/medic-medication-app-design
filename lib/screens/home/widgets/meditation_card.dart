import 'package:flutter/material.dart';

import '../../../models/meditation_model.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_sizes.dart';

class MeditationCard extends StatelessWidget {
  const MeditationCard({
    Key? key,
    required this.meditation,
  }) : super(key: key);

  final MeditationModel meditation;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: AppSizes.s180,
      margin: const EdgeInsets.only(bottom: AppSizes.s20),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.globalHPadding,
        vertical: AppSizes.globalHPadding * 0.6,
      ),
      decoration: BoxDecoration(
        color: AppColor.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.s20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    meditation.title,
                    style: textTheme.displaySmall?.copyWith(
                      color: AppColor.cardTextColor,
                      fontSize: AppSizes.s24,
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.s10),
                Text(
                  meditation.description,
                  maxLines: 2,
                  style: textTheme.bodyLarge?.copyWith(
                    color: AppColor.cardTextColor,
                    fontSize: AppSizes.s16,
                    // fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: AppSizes.globalHPadding * 0.5),
                MaterialButton(
                  onPressed: () {},
                  color: AppColor.cardButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.s10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text("Watch Now"),
                      SizedBox(width: AppSizes.s10),
                      Icon(Icons.play_circle, size: AppSizes.s18),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Image.asset(meditation.imagePath),
          ),
        ],
      ),
    );
  }
}
