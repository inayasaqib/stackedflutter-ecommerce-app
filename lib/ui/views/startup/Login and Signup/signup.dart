import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
              appBar: AppBar(
                leading: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      height: 20,
                      width: 40,
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: SafeArea(
                    child: Center(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          width: 100,
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Creat An",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Account!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: viewmodel.emailController,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            icon: Icon(Icons.person),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: viewmodel.passController,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 133, 132, 132),
                            ),
                            icon: Icon(Icons.lock),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 214, 19, 93),
                                  fontSize: 10),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                       viewmodel.nav()  && viewmodel.registerUser(); 
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 214, 19, 93),
                          minimumSize: const Size(250, 50),
                        ),
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 55,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Already Have An Account?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 133, 132, 132),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                              child: TextButton(
                                  onPressed: () {
                                    viewmodel.navigate();
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 214, 19, 93),
                                      decoration: TextDecoration.underline,
                                    ),
                                  )),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ));
        });
  }
}
