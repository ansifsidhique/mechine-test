import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';

@JsonSerializable()
class Products {
  List<ProductsProducts> products;
  // int total;
  // int skip;
  // int limit;

  Products({this.products=const[],});

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class ProductsProducts {
  int id;
  String ?title;
  String ?description;
  String? category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<String> tags;
  String? brand;
  String sku;
  int weight;
  ProductsProductsDimensions dimensions;
  String warrantyInformation;
  String shippingInformation;
  String availabilityStatus;
  List<ProductsProductsReviews> reviews;
  String returnPolicy;
  int minimumOrderQuantity;
  ProductsProductsMeta meta;
  List<String> ?images;
  String thumbnail;

  ProductsProducts(
      this.id,
      this.title,
      this.description,
      this.category,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.tags,
      this.brand,
      this.sku,
      this.weight,
      this.dimensions,
      this.warrantyInformation,
      this.shippingInformation,
      this.availabilityStatus,
      this.reviews,
      this.returnPolicy,
      this.minimumOrderQuantity,
      this.meta,
      this.images,
      this.thumbnail);

  factory ProductsProducts.fromJson(Map<String, dynamic> json) =>
      _$ProductsProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsProductsToJson(this);
}

@JsonSerializable()
class ProductsProductsDimensions {
  double width;
  double height;
  double depth;

  ProductsProductsDimensions(this.width, this.height, this.depth);

  factory ProductsProductsDimensions.fromJson(Map<String, dynamic> json) =>
      _$ProductsProductsDimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsProductsDimensionsToJson(this);
}

@JsonSerializable()
class ProductsProductsReviews {
  int rating;
  String comment;
  String date;
  String reviewerName;
  String reviewerEmail;

  ProductsProductsReviews(this.rating, this.comment, this.date,
      this.reviewerName, this.reviewerEmail);

  factory ProductsProductsReviews.fromJson(Map<String, dynamic> json) =>
      _$ProductsProductsReviewsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsProductsReviewsToJson(this);
}

@JsonSerializable()
class ProductsProductsMeta {
  String createdAt;
  String updatedAt;
  String barcode;
  String qrCode;

  ProductsProductsMeta(
      this.createdAt, this.updatedAt, this.barcode, this.qrCode);

  factory ProductsProductsMeta.fromJson(Map<String, dynamic> json) =>
      _$ProductsProductsMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsProductsMetaToJson(this);
}
