import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/ui/views/startup/Home/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? password= FirebaseAuth.instance.currentUser;

  @override
  build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.black,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Center(
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                    ),
                    style: IconButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
              ],
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("users")
                  .where("userId", isEqualTo: password?.uid)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong!"),
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(
                    child: Text("No Data Found!"),
                  );
                }
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          color: const Color.fromARGB(255, 236, 0, 98),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/profileimage.png'),
                                    radius: 30,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      ),
                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Personal Details',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 4,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final userinfo = snapshot.data!.docs[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: icon(Icons.person),
                                title: every('User Name'),
                                subtitle: subtitle(
                                  userinfo['User Name'],
                                ),
                                trailing: trailing(Icons.edit),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                leading: icon(Icons.mail),
                                title: every('Email'),
                                subtitle: subtitle(
                                  userinfo['email'],
                                ),
                                trailing: trailing(Icons.edit),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Buisness Address Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: icon(Icons.pin_drop_outlined),
                                title: every('Address'),
                                subtitle: subtitle(userinfo['address']),
                                trailing: trailing(Icons.edit),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              ListTile(
                                leading: icon(Icons.location_city_sharp),
                                trailing: trailing(Icons.edit),
                                title: every('City'),
                                subtitle: subtitle(userinfo['city']),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              ListTile(
                                leading: icon(Icons.location_city_sharp),
                                trailing: trailing(Icons.edit),
                                title: every('State'),
                                subtitle: subtitle(userinfo['state']),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              ListTile(
                                trailing: trailing(Icons.edit),
                                leading: icon(Icons.location_city_sharp),
                                title: every('Country'),
                                subtitle: subtitle(userinfo['country']),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Bank Account Details',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              ListTile(
                                leading: icon(Icons.account_box_sharp),
                                trailing: trailing(Icons.edit),
                                title: every("Account Holder's Name"),
                                subtitle:
                                    subtitle(userinfo['account holder name']),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              ListTile(
                                leading: icon(Icons.numbers_sharp),
                                trailing: trailing(Icons.edit),
                                title: every('Account Number'),
                                subtitle: subtitle(userinfo['account number']),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}

every(String title) {
  return Text(title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ));
}

subtitle(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.black38,
      fontSize: 10,
    ),
  );
}

icon(IconData icon) {
  return Icon(
    icon,
    color: Colors.black,
    size: 20,
  );
}

trailing(IconData icon) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      icon,
      color: Colors.black,
      size: 15,
    ),
  );
}
