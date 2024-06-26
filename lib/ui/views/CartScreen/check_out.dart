import 'package:ecommerce/ui/views/CartScreen/cartscreenviewmodel.dart';
import 'package:ecommerce/ui/views/Detail/personal_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  void nav(BuildContext context) {
    final provider = Provider.of<CartProvider>(context, listen: false);
    if (provider.cart.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Cart is Empty"),
          content: const Text("Please add items to the cart before checking out."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PersonalDetails()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 214, 213, 213),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              filled: true,
              fillColor: const Color.fromARGB(255, 208, 208, 208),
              hintText: "Enter Discount Code",
              hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text(
                  "Apply",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Subtotal",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                "\$${provider.totalPrice()}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => nav(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 55),
            ),
            child: const Text(
              "Check Out",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
