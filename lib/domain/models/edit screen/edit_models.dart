import 'package:json_annotation/json_annotation.dart';

part 'edit_models.g.dart';

@JsonSerializable()
class EditModels {
  int id;
  String title;
  String description;
  String category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<String> tags;
  String brand;
  String sku;
  int weight;
  EditModelsDimensions dimensions;
  String warrantyInformation;
  String shippingInformation;
  String availabilityStatus;
  List<EditModelsReviews> reviews;
  String returnPolicy;
  int minimumOrderQuantity;
  EditModelsMeta meta;
  List<String> images;
  String thumbnail;

  EditModels(
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

  factory EditModels.fromJson(Map<String, dynamic> json) =>
      _$EditModelsFromJson(json);

  Map<String, dynamic> toJson() => _$EditModelsToJson(this);
}

@JsonSerializable()
class EditModelsDimensions {
  double width;
  double height;
  double depth;

  EditModelsDimensions(this.width, this.height, this.depth);

  factory EditModelsDimensions.fromJson(Map<String, dynamic> json) =>
      _$EditModelsDimensionsFromJson(json);

  Map<String, dynamic> toJson() => _$EditModelsDimensionsToJson(this);
}

@JsonSerializable()
class EditModelsReviews {
  int rating;
  String comment;
  String date;
  String reviewerName;
  String reviewerEmail;

  EditModelsReviews(this.rating, this.comment, this.date, this.reviewerName,
      this.reviewerEmail);

  factory EditModelsReviews.fromJson(Map<String, dynamic> json) =>
      _$EditModelsReviewsFromJson(json);

  Map<String, dynamic> toJson() => _$EditModelsReviewsToJson(this);
}

@JsonSerializable()
class EditModelsMeta {
  String createdAt;
  String updatedAt;
  String barcode;
  String qrCode;

  EditModelsMeta(this.createdAt, this.updatedAt, this.barcode, this.qrCode);

  factory EditModelsMeta.fromJson(Map<String, dynamic> json) =>
      _$EditModelsMetaFromJson(json);

  Map<String, dynamic> toJson() => _$EditModelsMetaToJson(this);
}
