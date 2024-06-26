import 'package:bazar/Core/Errors/Failure.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class Home_Repo {
  Future<Either<Failure, List<product_model>>> getAllProducts();
}
