class Furniture {
  final String name, price, description, image;
  bool isFavorite;
  final double rating;

  Furniture({
    required this.name,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.rating,
    required this.image,
  });

  static List<Furniture> furnitures = [
    Furniture(
      name: 'Stylish Chair',
      price: '\$170',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.8,
      image: 'images/img1.png',
      isFavorite: false,
    ),
    Furniture(
      name: 'Modern Table',
      price: '\$75',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
      image: 'images/img2.png',
      isFavorite: false,
    ),
    Furniture(
      name: 'Wooden Console',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.7,
      image: 'images/img3.png',
      isFavorite: false,
    ),
    Furniture(
      name: 'Brown Armchair',
      price: '\$210',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.9,
      image: 'images/img1.png',
      isFavorite: false,
    ),
    Furniture(
      name: 'Wooden Coff',
      price: '\$240',
      description:
          'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      rating: 4.0,
      image: 'images/img5.png',
      isFavorite: false,
    ),
  ];
}
