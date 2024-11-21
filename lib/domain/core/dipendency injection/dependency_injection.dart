import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:machine_test/aplication/product_bloc.dart';

import '../../../infrastucture/product/product_impli.dart';
import '../../../infrastucture/product/product_services.dart';
GetIt getIt=GetIt.instance;
Future<void>dependencyInj()async {
  getIt.registerFactory(() => ProductBloc(getIt()));
  getIt.registerLazySingleton<ProductService>(() => ProductImpl());
}