import 'package:bazar/Core/Errors/Failure.dart';
import 'package:bazar/Core/Services/Api_services.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/Repo/Home_Repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class Repo_Impl implements Home_Repo {
  @override
  Future<Either<Failure, List<product_model>>> getAllProducts() async {
    try {
      var result = await Api_Services().get(endPoint: "products");
      if (kDebugMode) {
        print("------------------------>> $result");
      }
      return right(result);
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return left(serverFailure(ErrorMess: e.toString()));
    }
  }
}
