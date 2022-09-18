import 'package:flutter/material.dart';
import 'package:medic_medication_app/models/sound_model.dart';
import 'package:medic_medication_app/theme/app_sizes.dart';
import 'package:medic_medication_app/widgets/sliver_sized_box.dart';

import '../../theme/app_color.dart';

class SoundScreen extends StatelessWidget {
  const SoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        const SliverSizedBox(height: AppSizes.s20),
        SliverToBoxAdapter(
          child: Container(
            height: AppSizes.s200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.s20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/sound_card_image.png',
                ),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(AppSizes.globalHPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.s20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.black.withOpacity(0.2),
                    AppColor.black.withOpacity(0.8),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Relax Sounds",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: AppSizes.s24,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const Text(
                    "Sometimes the most productive thing you can do is relax.",
                  ),
                  const SizedBox(height: AppSizes.s10),
                  MaterialButton(
                    onPressed: () {},
                    color: AppColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Watch Now",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColor.black,
                                  ),
                        ),
                        const SizedBox(width: AppSizes.s10),
                        const Icon(
                          Icons.play_circle,
                          size: AppSizes.s18,
                          color: AppColor.black,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SliverSizedBox(height: AppSizes.s30),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final sound = SoundModel.sounds[index];
              return Container(
                margin: const EdgeInsets.all(AppSizes.s10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: AppSizes.s65,
                      width: AppSizes.s65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.s24),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            sound.imagePath,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSizes.s14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            sound.title,
                            style: const TextStyle(
                              fontSize: AppSizes.s20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("${sound.listenings} Listening"),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSizes.s14),
                    Text("${sound.duration} min"),
                  ],
                ),
              );
            },
            childCount: SoundModel.sounds.length,
          ),
        ),
      ],
    );
  }
}
