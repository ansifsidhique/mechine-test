import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:machine_test/domain/core/failures/failures.dart';

import '../domain/models/product screen/products.dart';
import '../infrastucture/product/product_services.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService;
  ProductBloc(this._productService) : super(ProductState.initial())   {
    on<Initialize>((event, emit)async {
      emit(
          const ProductState(productList: [], isLoading: true, isError: false));
      // TODO: implement event handler
      final result= await _productService.viewProduct();
       // print(result);
      final data=result.fold((MainFailure f) {
        return const ProductState(productList: [], isLoading: false, isError: true);
      }, (Products r) {
        return ProductState(productList: r.products, isLoading: false, isError: false);
      });
      // print("data");
      emit(data);
    });


  }
}
