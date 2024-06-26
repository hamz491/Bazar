import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
part 'store_fav_state.dart';

class StoreFavCubit extends Cubit<StoreFavState> {
  StoreFavCubit() : super(StoreFavInitial());
  bool isLoading = true;
  List favProducts = [];
  addFave(product_model product) async {
    emit(StoreFavLoading());
    try {
      isLoading = false;
      favProducts.clear();
      var x = Hive.box<product_model>(kProductsBox);
      await x.add(product);
      debugPrint("Add Item");
      favProducts = x.values.toList();
    } catch (e) {
      isLoading = false;
      emit(StoreFavFailure(ErrMessage: e.toString()));
    }
  }

  delFave(product_model product) async {
    emit(StoreFavLoading());
    try {
      isLoading = false;
      var x = Hive.box<product_model>(kProductsBox);
      await x.delete(product);
      debugPrint("Delete Item");
    } catch (e) {
      isLoading = false;
      emit(StoreFavFailure(ErrMessage: e.toString()));
    }
  }
}
