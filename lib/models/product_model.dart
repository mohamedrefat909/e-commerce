class Product{
 const Product({
    required this.category,
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.rating,
    required this.title
  });
  final String id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final Map rating;
}