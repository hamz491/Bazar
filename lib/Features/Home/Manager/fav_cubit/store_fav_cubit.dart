import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
part 'store_fav_state.dart';

class StoreFavCubit extends Cubit<StoreFavState> {
  StoreFavCubit() : super(StoreFavInitial());
  bool isLoading = true;
  var x = Hive.box(kProductsBox);
  addFave({required product_model product, required int index}) async {
    emit(StoreFavLoading());
    try {
      isLoading = false;
      if (!x.containsKey(index)) {
        await x.put(index, product);
      }
      debugPrint("add Fav -------->>> ${x.get(index)}");
    } catch (e) {
      isLoading = false;
      emit(StoreFavFailure(ErrMessage: e.toString()));
    }
  }

  delFave({required product_model product, required int index}) async {
    emit(StoreFavLoading());
    try {
      isLoading = false;
      if (x.containsKey(index)) {
        await x.delete(index);
      }
      debugPrint("Delete Item");
    } catch (e) {
      isLoading = false;
      emit(StoreFavFailure(ErrMessage: e.toString()));
    }
  }
}
