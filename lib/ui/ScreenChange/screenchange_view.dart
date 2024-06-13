import 'package:ecommerce/ui/ScreenChange/screenchange_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ScreenChangeView extends StatefulWidget {
  const ScreenChangeView({super.key});

  @override
  State<ScreenChangeView> createState() => _ScreenChangeViewState();
}

class _ScreenChangeViewState extends State<ScreenChangeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ScreenChangeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("1"),
                  Text(
                    "/3",
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                    ),
                  )
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    viewmodel.skip();
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            body: SafeArea(
                child: Center(
              child: Column(
                children: [
                  const Image(
                      image: AssetImage('assets/images/Chooseproduct.png')),
                  Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {
                            viewmodel.nav();
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ))),
                  const Text(
                    "Choose Products",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const Text(
                    'Browse & Choose From A Massive Selection Of Products,',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'All Curated To Match Your Interests And Lifestyle.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'Find Exactly What You Have Been Looking For!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )),
          );
        });
  }
}
