import 'package:ecommerce/ui/ScreenChange/screen2_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ScreenChangeone extends StatefulWidget {
  const ScreenChangeone({super.key});

  @override
  State<ScreenChangeone> createState() => _ScreenChangeoneState();
}

class _ScreenChangeoneState extends State<ScreenChangeone> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ScreenChangeViewModelone(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("2"),
                  Text(
                    "/3",
                    style: TextStyle(color: Color.fromARGB(255, 133, 132, 132)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {viewmodel.skip();},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ))
              ],
            ),
            body: SafeArea(
                child: Center(
              child: Column(
                children: [
                  const Image(
                      image: AssetImage('assets/images/Makepayment.png')),
                  Row(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {
                            viewmodel.navs();
                          },
                          icon: const Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 30,
                          )),
                    ),
                   const SizedBox(width: 226,),
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
                  ]),
                  const Text(
                    "Make Payment",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const Text(
                    'Complete your order securely in seconds.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    ' Our trusted payment system keeps your information',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'safe, so you can checkout with confidence.',
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
