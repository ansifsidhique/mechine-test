import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/models/edit%20screen/edit_models.dart';
import 'package:machine_test/infrastucture/edit/edit_service.dart';


class ProductRepository implements EditService {
  @override
  Future<Either<MainFailure, EditModels>> updateProduct({
    required int id,
    required String title,
    required String description,
    required double price,
  }) async {
    try {
      final response = await http.put(
        Uri.parse("https://dummyjson.com/products/$id"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "title": title,
          "description": description,
          "price": price,
        }),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final data = EditModels.fromJson(jsonResponse);
        return Right(data);
        // return  Right(true); // Update successful
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } on http.ClientException catch (e) {
      // print("Client Exception: $e");
      return  Left(MainFailure.clientFailure());
    } catch (e) {
      // print("Unexpected Error: $e");
      return  Left(MainFailure.clientFailure());
    }
  }
}
