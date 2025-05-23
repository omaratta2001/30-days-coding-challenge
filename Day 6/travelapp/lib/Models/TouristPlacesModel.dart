class Touristplacesmodel {
  final String name;
  final String image;

  Touristplacesmodel({required this.name, required this.image});
}

List<Touristplacesmodel> touristPlaces = [
  Touristplacesmodel(name: "Mountain", image: 'assets/icons/mountain.png'),
  Touristplacesmodel(name: "Beach", image: 'assets/icons/beach.png'),
  Touristplacesmodel(name: "Forest", image: 'assets/icons/forest.png'),
  Touristplacesmodel(name: "City", image: 'assets/icons/city.png'),
  Touristplacesmodel(name: "Desert", image: 'assets/icons/desert.png'),
];
