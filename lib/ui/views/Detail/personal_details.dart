import 'package:ecommerce/ui/views/Detail/personal.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => Personalviewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new),
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(15)),
                      ),
                      const Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profileimage.png'),
                      radius: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Personal Details',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(
                      Icons.person, "UserName", viewmodel.usercontroller),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(
                      Icons.mail, "Email", viewmodel.emailController),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        icon: Icon(Icons.pin),
                        hintText: 'password',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 161, 161, 161),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Password',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 249, 9, 113),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Business Address Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pincode",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(
                      Icons.pin, 'PinCode', viewmodel.pincodecontroller),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Address",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(Icons.pin_drop_sharp, 'Address',
                      viewmodel.adresscontroller),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "City",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(
                      Icons.location_city, 'City', viewmodel.citycontroller),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "State",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(Icons.location_history_rounded, 'State',
                      viewmodel.statecontroller),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Country",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  _buildSearchBar(Icons.location_city_outlined, 'Country',
                      viewmodel.countrycontroller),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bank Account Details',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bank Account Number',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  _buildSearchBar(Icons.numbers_sharp, 'Account Number',
                      viewmodel.accountnumbercontroller),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Account Holder's Name"),
                  ),
                  _buildSearchBar(Icons.account_box, 'Name',
                      viewmodel.holdernamecontroller),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ElevatedButton(
            onPressed: () async {
              await viewmodel.addUser();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 0, 83),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Pay",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildSearchBar(
    IconData share, String text, TextEditingController controller) {
  return SizedBox(
    width: 300,
    height: 50,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        icon: Icon(share),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 161, 161, 161),
        ),
      ),
    ),
  );
}
