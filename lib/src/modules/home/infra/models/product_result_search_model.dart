import 'package:shopping/src/modules/home/domain/entities/product_result_entity.dart';

class ProductResultSearchModel extends ProductResultEntity {

  final String id;
  final String createdAt;
  final String name;
  final String color;
  final String price;
  final int discount;
  final int rating;
  final bool favorite;
  final String description;
  final String image;
  final String department;
  final String sizes;
  final String payments;
  final bool freeDelivery;

  ProductResultSearchModel({
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
    this.payments,
    this.freeDelivery,
  });



  factory ProductResultSearchModel.fromJson(Map json) {
    return ProductResultSearchModel(
        id: json['id'],
        createdAt: json['createdAt'],
        name: json['name'],
        color: json['color'],
        price: json['price'],
        discount: json['discount'],
        rating: json['rating'],
        favorite: json['favorite'],
        description: json['description'],
        image: json['image'],
        department: json['department'],
        sizes: json['sizes'],
        payments: json['payments'],
        freeDelivery: json['freeDelivery']
    );
  }



  Map toJson() {
    return {
      id: id,
      createdAt: createdAt,
      name: name,
      color: color,
      price: price,
      discount: discount,
      rating: rating,
      favorite: favorite,
      description: description,
      image: image,
      department: department,
      sizes: sizes,
      payments: payments,
      freeDelivery: freeDelivery,
    };
  }



}