import 'package:ecommerce/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;
  void toggleFavourite(Product product) {
    // ignore: avoid_print
    print("hello203 $product");
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQtn(int index) => _cart[index].quantity++;
  decrementQtn(int index) => _cart[index].quantity--;
    totalPrice(){
            double total1 = 0.0;
            for(Product element in _cart){
                // ignore: unnecessary_cast
                total1 += (element.price *element.quantity) as double;
            }
            return total1;
          }
  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
