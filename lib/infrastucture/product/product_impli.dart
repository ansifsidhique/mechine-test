import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/models/product%20screen/products.dart';
import 'package:machine_test/infrastucture/product/product_services.dart';
import 'package:http/http.dart' as http;

class ProductImpl implements ProductService {
  @override
  Future<Either<MainFailure, Products>> viewProduct() async {
    try {
      final  response = await http.get(Uri.parse("https://dummyjson.com/products"));
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        final data = Products.fromJson(jsonResponse);
        return Right(data);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on http.ClientException catch (e) {
      print(e);
      return  Left(MainFailure.clientFailure());
    } catch (e) {
      print('Unexpected Error: $e');
      return  Left(MainFailure.clientFailure());
    }
  }
}
