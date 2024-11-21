import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/models/product%20screen/products.dart';
import 'package:dartz/dartz.dart';

abstract class ProductService{
  @override
  Future <Either<MainFailure,Products>>viewProduct();
}