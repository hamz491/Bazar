import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/fav_cubit/store_fav_cubit.dart';
import 'package:bazar/Features/Product/View/Product_Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class Product_Tile extends StatefulWidget {
  const Product_Tile({
    super.key,
    this.product,
    required this.index,
    required this.isActive,
  });
  final product_model? product;
  final int index;
  final bool isActive;

  @override
  State<Product_Tile> createState() => _Product_TileState();
}

class _Product_TileState extends State<Product_Tile> {
  var box = Hive.box(kfavbox);
  @override
  void initState() {
    if (!box.containsKey(widget.index)) {
      box.put(widget.index, false);
    }
    super.initState();
  }

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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Product_Details(product: widget.product),
              ),
            );
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
                          fit: BoxFit.cover,
                        ),
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    widget.isActive
                        ? GestureDetector(
                            onTap: () {
                              if (box.get(widget.index) == false) {
                                box.put(widget.index, true);
                                debugPrint(
                                    "+++++++>>>>> ${box.get(widget.index)}");
                                BlocProvider.of<StoreFavCubit>(context).addFave(
                                  product: widget.product!,
                                  index: widget.index,
                                );
                                debugPrint("Adding");
                              } else if (box.get(widget.index) == true) {
                                box.put(widget.index, false);
                                debugPrint(
                                    "+++++++>>>>> ${box.get(widget.index)}");
                                BlocProvider.of<StoreFavCubit>(context).delFave(
                                  product: widget.product!,
                                  index: widget.index,
                                );
                                debugPrint("Deleting");
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: box.get(widget.index)
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
                          )
                        : const Text(""),
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
