import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/Repo/Home_Repo__Impl.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
part 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit() : super(GetAllProductsInitial());
  
  fechAllProducts() async {
    if (kDebugMode) {
      print("start");
    }
    emit(GetAllProductsLoading());
    var data = await Repo_Impl().getAllProducts();
    data.fold(
      (failure) {
        emit(GetAllProductsFailure(ErrMessage: failure.ErrorMess));
      },
      (products) {
        if (kDebugMode) {
          print("Success");
        }
        emit(GetAllProductsSuccess(products: products));
      },
    );
  }
}
