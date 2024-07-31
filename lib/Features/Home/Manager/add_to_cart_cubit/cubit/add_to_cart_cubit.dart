import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(AddToCartInitial());
  var mybox = Hive.box(kCartBox);
  late int x;
  addToCart(product_model product) async {
    try {
      if (mybox.values.toList().contains(product)) {
        debugPrint("===============>> Already Exist");
      } else {
        x = await mybox.add(product);
        debugPrint("------->>>> Added to cart box --->> ${mybox.get(x)}");
      }
    } catch (e) {
      debugPrint("------->>>> Erro: ${e.toString()}");
    }
  }
}
