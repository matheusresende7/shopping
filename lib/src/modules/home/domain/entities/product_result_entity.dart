class ProductResultEntity {

  final int id;
  final String createdAt;
  final String name;
  final String color;
  final double price;
  final int discount;
  final int rating;
  final bool favorite;
  final String description;
  final String image;
  final String department;
  final List sizes;
  final List payments;

  ProductResultEntity({
    this.id,
    this.createdAt,
    this.name,
    this.color,
    this.price,
    this.discount,
    this.rating,
    this.favorite,
    this.description,
    this.image,
    this.department,
    this.sizes,
    this.payments
  });

}