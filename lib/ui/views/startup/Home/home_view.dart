import 'package:ecommerce/ui/views/startup/Home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Image(image: AssetImage('assets/images/logo.png'), width: 125, height: 62.5),
             actions: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profileimage.png'),
                backgroundColor: Colors.transparent,
                radius: 20,
              ),
             ],
            ),
          );
        });
  }
}
