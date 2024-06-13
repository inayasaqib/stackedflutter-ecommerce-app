import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel{
   final emailController = TextEditingController();
    final passController = TextEditingController();
    final navigationservice = locator<NavigationService>();
    loginUser(context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      emailController.clear();
      passController.clear();
      navigationservice.navigateTo(Routes.homeView);
      print("=============== LoggedIn Successfully ===================");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print("=============== Catch ===================");
      print(e);
    }
  }
void navigate() {
    navigationservice.navigateTo(Routes.signUpView);
  }
   nav (){
    navigationservice.navigateTo(Routes.homeView);
  }
}