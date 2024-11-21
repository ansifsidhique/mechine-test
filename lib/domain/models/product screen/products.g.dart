// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductsProducts.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'products': instance.products,
    };

ProductsProducts _$ProductsProductsFromJson(Map<String, dynamic> json) =>
    ProductsProducts(
      (json['id'] as num).toInt(),
      json['title'] as String?,
      json['description'] as String?,
      json['category'] as String?,
      (json['price'] as num).toDouble(),
      (json['discountPercentage'] as num).toDouble(),
      (json['rating'] as num).toDouble(),
      (json['stock'] as num).toInt(),
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['brand'] as String?,
      json['sku'] as String,
      (json['weight'] as num).toInt(),
      ProductsProductsDimensions.fromJson(
          json['dimensions'] as Map<String, dynamic>),
      json['warrantyInformation'] as String,
      json['shippingInformation'] as String,
      json['availabilityStatus'] as String,
      (json['reviews'] as List<dynamic>)
          .map((e) =>
              ProductsProductsReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['returnPolicy'] as String,
      (json['minimumOrderQuantity'] as num).toInt(),
      ProductsProductsMeta.fromJson(json['meta'] as Map<String, dynamic>),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['thumbnail'] as String,
    );

Map<String, dynamic> _$ProductsProductsToJson(ProductsProducts instance) =>
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

ProductsProductsDimensions _$ProductsProductsDimensionsFromJson(
        Map<String, dynamic> json) =>
    ProductsProductsDimensions(
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
      (json['depth'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductsProductsDimensionsToJson(
        ProductsProductsDimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };

ProductsProductsReviews _$ProductsProductsReviewsFromJson(
        Map<String, dynamic> json) =>
    ProductsProductsReviews(
      (json['rating'] as num).toInt(),
      json['comment'] as String,
      json['date'] as String,
      json['reviewerName'] as String,
      json['reviewerEmail'] as String,
    );

Map<String, dynamic> _$ProductsProductsReviewsToJson(
        ProductsProductsReviews instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date,
      'reviewerName': instance.reviewerName,
      'reviewerEmail': instance.reviewerEmail,
    };

ProductsProductsMeta _$ProductsProductsMetaFromJson(
        Map<String, dynamic> json) =>
    ProductsProductsMeta(
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['barcode'] as String,
      json['qrCode'] as String,
    );

Map<String, dynamic> _$ProductsProductsMetaToJson(
        ProductsProductsMeta instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'barcode': instance.barcode,
      'qrCode': instance.qrCode,
    };
