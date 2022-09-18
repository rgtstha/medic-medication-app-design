import 'package:flutter/material.dart';

import '../../../models/meditation_model.dart';
import 'meditation_card.dart';

class MeditationList extends StatelessWidget {
  const MeditationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) {
            final meditation = MeditationModel.meditations[index];
            return MeditationCard(meditation: meditation);
          },
          childCount: MeditationModel.meditations.length,
        ),
      );
}
