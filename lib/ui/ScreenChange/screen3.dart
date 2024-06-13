import 'package:ecommerce/ui/ScreenChange/screen3_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ScreenChangeTwo extends StatefulWidget {
  const ScreenChangeTwo({super.key});

  @override
  State<ScreenChangeTwo> createState() => _ScreenChangeTwoState();
}

class _ScreenChangeTwoState extends State<ScreenChangeTwo> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ScreenChangeTwoModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text("3"),
                  Text(
                    "/3",
                    style: TextStyle(color: Color.fromARGB(255, 133, 132, 132)),
                  ),
                ],
              ),
            ),
            body: SafeArea(
                child: Center(
              child: Column(
                children: [
                  const Image(
                      image: AssetImage('assets/images/Makepayment.png')),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {viewmodel.nav();},
                          icon: const Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 30,
                          ))),
                  const Text(
                    "Get Your Order",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const Text(
                    "Never miss an update!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Track your order's progress in real-time and",
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'get notified when it arrives conveniently on your phone',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 132, 132),
                      fontSize: 12,
                    ),
                  ),
                 const SizedBox(height: 100,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: (){viewmodel.navs();} , 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 214, 19, 93),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        minimumSize: const Size(250, 50)
                      ),
                      child: const Text("Get Started!", style: TextStyle(color: Colors.white),),
                      ),
                  )
                ],
              ),
            )),
          );
        });
  }
}