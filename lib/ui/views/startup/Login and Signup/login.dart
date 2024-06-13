import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
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
                              "Welcome",
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
                              "Back!",
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
                        child: InkWell(
                          onTap: () {
                           
                          },
                          child: TextButton(
                              onPressed: () {
                             
                              },
                              child: const Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 19, 93),
                                    fontSize: 10),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                         viewmodel.nav() && viewmodel.loginUser(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 214, 19, 93),
                          minimumSize: const Size(250, 50),
                        ),
                        child: const Text(
                          "Login",
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
                              "Create An Account",
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
                                  "Sign Up",
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
