import 'package:ecommerce/ui/views/Details/detailscreen.dart';
import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WishlistViewmodel>.reactive(
      viewModelBuilder: () => WishlistViewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 125,
              height: 62.5,
            ),
            actions: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profileimage.png'),
                backgroundColor: Colors.transparent,
                radius: 20,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    accountName: Text(
                      "Inaaya Saqib",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    accountEmail: Text(
                      "inaayasaqib.46292@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPictureSize: Size.square(40),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profileimage.png'),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('My Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help),
                  title: const Text('Help Center'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 1,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBottomNavigationBarItem(
                  icon: Icons.home_outlined,
                  label: 'Home',
                  isActive: viewmodel.currentIndex == 2,
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex = 2;
                    });
                    viewmodel.nav();
                  },
                ),
                _buildBottomNavigationBarItem(
                  icon: Icons.favorite_outline_sharp,
                  label: 'Wish List',
                  isActive: viewmodel.currentIndex == 0,
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex = 0;
                    });
                    viewmodel.navs();
                  },
                ),
                const SizedBox(width: 15),
                _buildBottomNavigationBarItem(
                  icon: Icons.search_outlined,
                  label: 'Search',
                  isActive: viewmodel.currentIndex == 1,
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex = 1;
                    });
                  },
                ),
                _buildBottomNavigationBarItem(
                  icon: Icons.settings,
                  label: 'Settings',
                  isActive: viewmodel.currentIndex == 3,
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                viewmodel.currentIndex = 4;
              });
              viewmodel.cart();
            },
            shape: const CircleBorder(),
            backgroundColor: Colors.white,
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: viewmodel.currentIndex == 4 ? Colors.red : Colors.black,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    _buildSearchBar(),
                    _buildSortAndFilterRow(),
                    viewmodel.isBusy
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.6,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: viewmodel.product.length,
                            itemBuilder: (context, index) {
                              final product = viewmodel.product[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detailscreen(
                                                product: product,
                                              )));
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Hero(
                                      tag: product.image,
                                      child: Image.network(
                                        product.image,
                                        height: 135,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      product.title,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Text(
                                        product.description,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("\$${product.price}"),
                                    Row(
                                      children: [
                                        Text(
                                          product.rate,
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 116, 116, 116)),
                                        ),
                                        Text(
                                          product.review,
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 116, 116, 116)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBarItem({
    required IconData icon,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 25,
            color: isActive ? Colors.red : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 7,
              color: isActive ? Colors.red : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return const SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          icon: Icon(Icons.search_sharp),
          hintText: "Search any product",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 161, 161, 161),
          ),
        ),
      ),
    );
  }

  Widget _buildSortAndFilterRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '50,082+ Items',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            _buildSortFilterButton('Sort', Icons.compare_arrows),
            const SizedBox(width: 5),
            _buildSortFilterButton('Filter', Icons.filter_alt_outlined),
          ],
        ),
      ],
    );
  }

  Widget _buildSortFilterButton(String label, IconData icon) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 25,
        child: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12.5,
              ),
            ),
            Icon(
              icon,
              size: 12.5,
            ),
          ],
        ),
      ),
    );
  }
}
