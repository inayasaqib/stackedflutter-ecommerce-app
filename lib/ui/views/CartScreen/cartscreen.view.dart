import 'package:ecommerce/ui/views/CartScreen/cartscreenviewmodel.dart';
import 'package:ecommerce/ui/views/CartScreen/check_out.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
        final provider = context.watch<CartProvider>();
        final finalList = provider.cart;

        Widget productQuantity(IconData icon, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                icon == Icons.add
                    ? provider.incrementQtn(index)
                    : provider.decrementQtn(index);
              });
            },
            child: Icon(
              icon,
              size: 10,
            ),
          );
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      const Text(
                        'Checkout',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: finalList.length,
                    itemBuilder: (context, index) {
                      final cartItems = finalList[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 225, 225, 225),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(cartItems.image),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        cartItems.title,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                        maxLines: 2,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        cartItems.category,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 117, 117, 117),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        '\$${cartItems.price}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            right: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    provider.cart.removeAt(index);
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 199, 199, 199),
                                    border: Border.all(
                                      color: Colors.grey.shade200,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      productQuantity(Icons.add, index),
                                      const SizedBox(width: 10),
                                      Text(
                                        cartItems.quantity.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      productQuantity(Icons.remove, index),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const CheckOut(),
        );
  }
}
