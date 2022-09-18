class MeditationModel {
  final String title;
  final String description;
  final String imagePath;

  MeditationModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  static List<MeditationModel> get meditations => [
        MeditationModel(
          title: "Meditation 101",
          description: "Techniques, Benefits, and a Beginner’s How-To",
          imagePath: 'assets/images/card_image_1.png',
        ),
        MeditationModel(
          title: "Cardio Meditation",
          description:
              "Basics of Yoga for Beginners or Experienced Professionals",
          imagePath: 'assets/images/card_image_2.png',
        ),
        MeditationModel(
          title: "Meditation 101",
          description: "Techniques, Benefits, and a Beginner’s How-To",
          imagePath: 'assets/images/card_image_1.png',
        ),
        MeditationModel(
          title: "Cardio Meditation",
          description:
              "Basics of Yoga for Beginners or Experienced Professionals",
          imagePath: 'assets/images/card_image_2.png',
        ),
      ];
}
