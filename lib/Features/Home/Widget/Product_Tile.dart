import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/cubit/store_fav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Product_Tile extends StatefulWidget {
  const Product_Tile({super.key, this.product});
  final product_model? product;

  @override
  State<Product_Tile> createState() => _Product_TileState();
}

class _Product_TileState extends State<Product_Tile> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoreFavCubit, StoreFavState>(
      listener: (context, state) {
        if (state is StoreFavFailure) {
          debugPrint(state.ErrMessage);
        }
        if (state is StoreFavSuccess) {
          debugPrint("Success in Consumer");
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            GoRouter.of(context).push(product_details_rout);
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.product!.thumbnail!),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (isActive == false) {
                          isActive = true;
                          BlocProvider.of<StoreFavCubit>(context)
                              .addFave(widget.product!);
                          debugPrint("Adding");
                        } else if (isActive == true) {
                          isActive = false;
                          BlocProvider.of<StoreFavCubit>(context)
                              .delFave(widget.product!);
                          debugPrint("Deleting");
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: isActive
                            ? const Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                size: 30,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "${widget.product!.title}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Text(
                  "${widget.product!.description}",
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "${widget.product!.price} \$",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
