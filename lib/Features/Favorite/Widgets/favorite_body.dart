import 'package:bazar/Features/Home/Manager/cubit/store_fav_cubit.dart';
import 'package:bazar/Features/Home/Widget/Product_Tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class favorite_body extends StatefulWidget {
  const favorite_body({super.key});

  @override
  State<favorite_body> createState() => _favorite_bodyState();
}

class _favorite_bodyState extends State<favorite_body> {
  @override
  Widget build(BuildContext context) {
    List mylist = BlocProvider.of<StoreFavCubit>(context).x.values.toList();
    return GridView.builder(
      padding: const EdgeInsets.only(top: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 300,
      ),
      itemCount: mylist.length,
      itemBuilder: (context, index) {
        return Product_Tile(
          product: mylist[index],
          index: 1,
        );
      },
    );
  }
}
