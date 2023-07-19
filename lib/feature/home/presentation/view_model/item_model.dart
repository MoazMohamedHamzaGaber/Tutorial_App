class Item
{
  String? title;
  String? category;
  String? location;
  double? price;
  String? image;

  Item({
    required this.title,
    required this.category,
    required this.location,
    required this.price,
    required this.image,
});
  static List<Item>recommendation=[
    Item(
      title: 'Modern House for Renting',
      category: 'House',
      location: 'Georgia, USA',
      price: 2500,
      image: 'assets/images/house.jpg',
    ),
    Item(
      title: 'Big Villa',
      category: 'Villa',
      location: 'Miami, USA',
      price: 3000,
      image: 'assets/images/villa.jpg',
    ),
    Item(
      title: 'Small House',
      category: 'House',
      location: 'Wesex, London',
      price: 1500,
      image: 'assets/images/house.jpg',
    ),
    Item(
      title: 'Luxios Apartment',
      category: 'Apartment',
      location: 'New York, USA',
      price: 800,
      image: 'assets/images/villa.jpg',
    ),
  ];

  static List<Item>nearby=[
    Item(
      title: 'Student Apartment',
      category: 'Apartment',
      location: 'Cairo, Egypt',
      price: 150,
      image: 'assets/images/villa.jpg',
    ),
    Item(
      title: 'Small Villa',
      category: 'Villa',
      location: 'Giza, Egypt',
      price: 300,
      image: 'assets/images/house.jpg',
    ),
    Item(
      title: 'Family House',
      category: 'House',
      location: 'Fayoum, Egypt',
      price: 200,
      image: 'assets/images/villa.jpg',
    ),
    Item(
      title: 'Province House',
      category: 'House',
      location: 'Aswan, Egypt',
      price: 100,
      image: 'assets/images/house.jpg',
    ),
  ];
}

