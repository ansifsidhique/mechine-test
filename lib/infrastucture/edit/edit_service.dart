import 'package:dartz/dartz.dart';
import 'package:machine_test/domain/core/failures/failures.dart';
import 'package:machine_test/domain/models/edit%20screen/edit_models.dart';

abstract class EditService {
  Future<Either<MainFailure, EditModels>> updateProduct({
    required int id,
    required String title,
    required String description,
    required double price,
  });
}
