class Category {
  final String title;
  final String Image;

  Category({required this.title, required this.Image});
}

final List<Category> categories = [
  Category(title: "Shoes", Image: "assets/shoes.jpg"),
  Category(title: "Beauty", Image: "assets/beauty.png"),
  Category(title: "PC", Image: "assets/pc.jpg"),
  Category(title: "Mobile", Image: "assets/mobile.jpg"),
  Category(title: "Watch", Image: "assets/watch.png"),
];
