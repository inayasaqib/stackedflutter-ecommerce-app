import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Personalviewmodel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final pincodecontroller = TextEditingController();
  final adresscontroller = TextEditingController();
  final citycontroller = TextEditingController();
  final statecontroller = TextEditingController();
  final countrycontroller = TextEditingController();
  final accountnumbercontroller = TextEditingController();
  final holdernamecontroller = TextEditingController();
  final usercontroller = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection("users");
  
  Future<void> addUser() async {
    try {
      await users.add({
        "email": emailController.text,
        'password' : passController.text,
        "pincode": pincodecontroller.text,
        "address": adresscontroller.text,
        "city": citycontroller.text,
        "state": statecontroller.text,
        "country": countrycontroller.text,
        "account number": accountnumbercontroller.text,
        "account holder name": holdernamecontroller.text,
        "User Name" : usercontroller.text,
      });
      // ignore: avoid_print
      print("User added");
      nav(); 
    } catch (e) {
      // ignore: avoid_print
      print("Failed to add user: $e");
    }
  }


  
  void nav() {
    navigationservice.navigateTo(Routes.successful);
  }
}
