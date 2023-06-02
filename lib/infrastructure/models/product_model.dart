class Products {
  String id;
  String name;
  List image;
  int price;
  String description;
  String category;
  String brand;
  List sizes;
  int discount;
  int quantity;
  String ventor;

  Products(
      {required this.name,
      required this.ventor,
      required this.quantity,
      required this.discount,
      required this.sizes,
      required this.id,
      required this.image,
      required this.price,
      required this.description,
      required this.category,
      required this.brand});

  factory Products.fromJson(Map<dynamic, dynamic> map) {
    return Products(
        ventor: map['ventor'] ?? '',
        quantity: map['quantity'],
        discount: map['discount'],
        sizes: map['size'] as List,
        id: map['id'],
        name: map['ProductName'],
        image: map['Image'] as List,
        price: map['Price'],
        description: map['Description'],
        category: map['Category'],
        brand: map['Brand']);
  }
}
