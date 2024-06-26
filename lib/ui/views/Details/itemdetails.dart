import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:ecommerce/service/product_service.dart';
import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';

class ItemDetails extends StatefulWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => WishlistViewmodel(),
        builder: (context, viewmodel, child) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.product.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 238, 80, 1),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              const  SizedBox(width: 3,),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.white,
                                    )),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.product.rate,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            widget.product.review,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 132, 132, 132),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$${widget.product.price}",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              '50% OFF',
                              style: TextStyle(
                                color: Color.fromARGB(255, 243, 53, 113),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Category:',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.product.category,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Seller:',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.product.seller,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PRODUCT DETAILS",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.product.description,
                        style: const TextStyle(color: Colors.black),
                        maxLines: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildoptionsgather(),
                      const SizedBox(
                        height: 10,
                      ),
                      deliverytime(),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

Widget _buildoptions(double width, IconData icon, String title) {
  return Container(
    height: 20,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      color: Colors.white,
      border: Border.all(
        color: const Color.fromARGB(255, 96, 96, 96),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 5,
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            icon,
            size: 10,
            color: const Color.fromARGB(255, 96, 96, 96),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 96, 96, 96),
              fontSize: 10,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    ),
  );
}

Widget _buildoptionsgather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildoptions(100, Icons.location_pin, "Nearest Store"),
      const SizedBox(
        width: 5,
      ),
      _buildoptions(60, Icons.lock, "VIP"),
      const SizedBox(
        width: 5,
      ),
      _buildoptions(100, Icons.restart_alt, "Return Policy"),
    ],
  );
}

Widget deliverytime() {
  return Container(
    width: 300,
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 248, 187, 237)),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "Delivery in",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                "1 Within Hour",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
