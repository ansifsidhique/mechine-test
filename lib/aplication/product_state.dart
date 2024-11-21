part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {required List<ProductsProducts> productList,
     required bool isLoading,
     required bool isError}) = _ProductState;
  factory ProductState.initial() =>
      const ProductState(isError: false, isLoading: false, productList: []);
}
