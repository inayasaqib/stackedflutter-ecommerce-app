import 'package:ecommerce/service/product_service.dart';
import 'package:ecommerce/ui/views/Details/addtocart.dart';
import 'package:ecommerce/ui/views/Details/detailapp.dart';
import 'package:ecommerce/ui/views/Details/image_slider.dart';
import 'package:ecommerce/ui/views/Details/itemdetails.dart';
import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Detailscreen extends StatefulWidget {
  final Product product;
  const Detailscreen({super.key, required this.product});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => WishlistViewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          backgroundColor: const Color(0xfFF5F5F5),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DetailappBar(),
                  ImageSlider(
                    image: widget.product.image,
                    onChange: (index) {
                      setState(() {
                        viewmodel.currentImage = index;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        5,
                        (index) => AnimatedContainer(
                          duration: const Duration(
                            microseconds: 300,
                          ),
                          width: viewmodel.currentImage == index ? 15 : 8,
                          height: 8,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: viewmodel.currentImage == index
                                ? Colors.black
                                : Colors.transparent,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    )),
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 100,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemDetails(product: widget.product)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: AddToCart(product: widget.product),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}