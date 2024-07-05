class Item {
  final String id;
  final String name;
  final String price;
  final String author;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.author,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      author: json['business']['name']
    );
  }
}