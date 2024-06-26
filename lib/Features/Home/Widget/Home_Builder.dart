import 'package:bazar/Features/Home/Manager/Get_Products_cubit/get_all_products_cubit.dart';
import 'package:bazar/Features/Home/Widget/Product_Tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_Builder extends StatelessWidget {
  const Home_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
      builder: (context, state) {
        if (state is GetAllProductsSuccess) {
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
            ),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return Product_Tile(
                product: state.products[index],
              );
            },
          );
        } else if (state is GetAllProductsFailure) {
          return Center(child: Text(state.ErrMessage));
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
