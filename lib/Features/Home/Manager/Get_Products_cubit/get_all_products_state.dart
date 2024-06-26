part of 'get_all_products_cubit.dart';

@immutable
sealed class GetAllProductsState {}

final class GetAllProductsInitial extends GetAllProductsState {}

final class GetAllProductsLoading extends GetAllProductsState {}

final class GetAllProductsSuccess extends GetAllProductsState {
  final List<product_model> products;

  GetAllProductsSuccess({required this.products});
}

final class GetAllProductsFailure extends GetAllProductsState {
  final String ErrMessage;

  GetAllProductsFailure({required this.ErrMessage});
}
