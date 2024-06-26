import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => WishlistViewmodel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
                child: SizedBox(
              width: 300,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.check,
                          size: 50,
                          color: Color.fromARGB(255, 255, 0, 98),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Payment done successfully',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        viewmodel.nav();
                      },
                      style: ElevatedButton.styleFrom(
                        maximumSize: const Size(250, 40),
                        backgroundColor: const Color.fromARGB(255, 255, 0, 115),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Back To Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          );
        });
  }
}
