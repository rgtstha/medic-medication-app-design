
class CategoryModel {
  final String name;
  final String iconPath;

  const CategoryModel({required this.name, required this.iconPath});

  static List<CategoryModel> get categories => [
        const CategoryModel(name: "Calm", iconPath: 'assets/icons/calm.svg'),
        const CategoryModel(name: "Relax", iconPath: 'assets/icons/relax.svg'),
        const CategoryModel(name: "Focus", iconPath: 'assets/icons/focus.svg'),
        const CategoryModel(
            name: "Anxious", iconPath: 'assets/icons/anxious.svg'),
      ];
}