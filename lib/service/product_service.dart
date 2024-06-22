
class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final String category;
  final String rate;
  int quantity;

Product({
    this.title = '',
    this.description = '',
    this.image = '',
    this.review = '',
    this.seller = '',
    required this.price,
    this.category = '',
    this.rate = '',
    required this.quantity
  });
}
class Home {
   final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final String price;
  final String category;
  final String rate;
  int quantity;

Home({
    this.title = '',
    this.description = '',
    this.image = '',
    this.review = '',
    this.seller = '',
    this.price = '',
    this.category = '',
    this.rate = '',
   required this.quantity});
}

