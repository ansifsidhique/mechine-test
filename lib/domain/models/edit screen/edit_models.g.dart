// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditModels _$EditModelsFromJson(Map<String, dynamic> json) => EditModels(
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['description'] as String,
      json['category'] as String,
      (json['price'] as num).toDouble(),
      (json['discountPercentage'] as num).toDouble(),
      (json['rating'] as num).toDouble(),
      (json['stock'] as num).toInt(),
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['brand'] as String,
      json['sku'] as String,
      (json['weight'] as num).toInt(),
      EditModelsDimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
      json['warrantyInformation'] as String,
      json['shippingInformation'] as String,
      json['availabilityStatus'] as String,
      (json['reviews'] as List<dynamic>)
          .map((e) => EditModelsReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['returnPolicy'] as String,
      (json['minimumOrderQuantity'] as num).toInt(),
      EditModelsMeta.fromJson(json['meta'] as Map<String, dynamic>),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['thumbnail'] as String,
    );

Map<String, dynamic> _$EditModelsToJson(EditModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'warrantyInformation': instance.warrantyInformation,
      'shippingInformation': instance.shippingInformation,
      'availabilityStatus': instance.availabilityStatus,
      'reviews': instance.reviews,
      'returnPolicy': instance.returnPolicy,
      'minimumOrderQuantity': instance.minimumOrderQuantity,
      'meta': instance.meta,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
    };

EditModelsDimensions _$EditModelsDimensionsFromJson(
        Map<String, dynamic> json) =>
    EditModelsDimensions(
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
      (json['depth'] as num).toDouble(),
    );

Map<String, dynamic> _$EditModelsDimensionsToJson(
        EditModelsDimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };

EditModelsReviews _$EditModelsReviewsFromJson(Map<String, dynamic> json) =>
    EditModelsReviews(
      (json['rating'] as num).toInt(),
      json['comment'] as String,
      json['date'] as String,
      json['reviewerName'] as String,
      json['reviewerEmail'] as String,
    );

Map<String, dynamic> _$EditModelsReviewsToJson(EditModelsReviews instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date,
      'reviewerName': instance.reviewerName,
      'reviewerEmail': instance.reviewerEmail,
    };

EditModelsMeta _$EditModelsMetaFromJson(Map<String, dynamic> json) =>
    EditModelsMeta(
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['barcode'] as String,
      json['qrCode'] as String,
    );

Map<String, dynamic> _$EditModelsMetaToJson(EditModelsMeta instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'barcode': instance.barcode,
      'qrCode': instance.qrCode,
    };
