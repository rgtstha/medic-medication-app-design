class SoundModel {
  final String imagePath;
  final String title;
  final int listenings;
  final int duration;

  SoundModel({
    required this.title,
    required this.imagePath,
    required this.listenings,
    required this.duration,
  });

  static List<SoundModel> get sounds => [
        SoundModel(
          duration: 25,
          listenings: 3456,
          title: "Painting Forest",
          imagePath: 'assets/images/sound_card_image.png',
        ),
        SoundModel(
          duration: 15,
          listenings: 456,
          title: "Mountaineers",
          imagePath: 'assets/images/sound_card_image.png',
        ),
        SoundModel(
          duration: 15,
          listenings: 456,
          title: "Mountaineers",
          imagePath: 'assets/images/sound_card_image.png',
        ),
        SoundModel(
          duration: 15,
          listenings: 456,
          title: "Mountaineers",
          imagePath: 'assets/images/sound_card_image.png',
        ),
        SoundModel(
          duration: 15,
          listenings: 456,
          title: "Mountaineers",
          imagePath: 'assets/images/sound_card_image.png',
        ),
        SoundModel(
          duration: 15,
          listenings: 456,
          title: "Mountaineers",
          imagePath: 'assets/images/sound_card_image.png',
        ),
      ];
}
