import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DetailappBar extends StatelessWidget {
  const DetailappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => WishlistViewmodel(),
        builder: (context, viewmodel, child) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              IconButton(
                onPressed: () {
                  viewmodel.navs();
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(15)),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    viewmodel.cart();
                  },
                  icon: const Icon(Icons.shopping_cart_outlined),
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  padding: const EdgeInsets.all(15)),
            ]),
          );
        });
  }
}
