import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:dio/dio.dart';

class Api_Services {
  final _Base_Url = "https://dummyjson.com/";
  final Dio dio = Dio();
  List<product_model> products = [];
  Future<List<product_model>> get({required String endPoint}) async {
    var response = await dio.get("$_Base_Url$endPoint");
    var data = response.data;
    for (var i in data["products"]) {
      products.add(product_model.getAllProduct(i));
    }

    (kDebugMode) {
      print("---products list---- $products");
    };
    return products;
  }
}
