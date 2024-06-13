import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel{
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final navigationservice = locator<NavigationService>();
  registerUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
          emailController.clear();
      passController.clear();
      navigationservice.navigateTo(Routes.homeView);
      print("=============== SignedUp Successfully ===================");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
  navigate(){
     navigationservice.navigateTo(Routes.loginView);
  }
  nav(){
    navigationservice.navigateTo(Routes.homeView); 
     }
}