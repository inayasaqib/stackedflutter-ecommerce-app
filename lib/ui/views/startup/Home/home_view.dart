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
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              icon: Icon(Icons.search_sharp),
                              hintText: "Search any product",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 161, 161, 161),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'All Featured',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 90,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 25,
                                width: 50,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Sort',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.5,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.compare_arrows,
                                        size: 12.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: const Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 25,
                                width: 50,
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Filter',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.5,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.filter_alt_outlined,
                                        size: 12.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      child: SafeArea(
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/makeup.png'),
                                  ),
                                  Text(
                                    'Makeup',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/fashion.png'),
                                  ),
                                  Text(
                                    'Fashion',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/kidsclothes.png'),
                                  ),
                                  Text(
                                    'Kids',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/mensclothing.png'),
                                  ),
                                  Text(
                                    'Mens',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/womenclothing.png'),
                                  ),
                                  Text(
                                    'Womens',
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 150,
                          width: 300,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 245, 133, 209),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text(
                                      '50-40% OFF',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Now in (product)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    const Text(
                                      'All Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 245, 133, 209),
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                      ),
                                      child: const Row(
                                        children: [
                                          Center(
                                            child: Text(
                                              'Shop Now',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_sharp,
                                            color: Colors.white,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/shopnow.png'),
                                      width: 130,
                                      height: 140,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color.fromARGB(255, 41, 167, 240),
                      ),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Deal of the Day',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "22h 55m 20s remaining",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 75,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "View All",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    viewmodel.isBusy
                        ? const CircularProgressIndicator()
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
                                  // Handle product tap
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      product.image,
                                      height: 130,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      product.title,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        product.description,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$${product.price}",
                                    ),
                                    Row(
                                      children: [
                                        Text(product.rate,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 116, 116, 116))),
                                        Text(
                                          product.review,
                                          style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 116, 116, 116)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 75,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        color: Color.fromARGB(255, 231, 228, 228),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset('assets/images/specialoffer.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: [
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Special Offers',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Make sure you get the',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'offer you need at best prices',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color.fromARGB(255, 245, 133, 209),
                      ),
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Trending Products',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Last Date 29/02/22",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: InkWell(
                              onTap: () {},
                              child: const Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'View All',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    viewmodel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: viewmodel.home.length,
              itemBuilder: (context, index) {
                final product = viewmodel.home[index];
                return GestureDetector(
                  onTap: () {
                    // Handle product tap
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        product.image,
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.cover,
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
                      Text(product.price),
                      Row(
                        children: [
                          Text(
                            product.rate,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 116, 116, 116),
                            ),
                          ),
                          Text(
                            product.review,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 116, 116, 116),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 218, 218, 218),
                              width: 2)),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage('assets/images/summer.png'),
                              width: 300,
                              height: 175,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  width: 80,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color:
                                        const Color.fromARGB(255, 252, 23, 130),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Row(
                                    children: [
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'View All',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_sharp,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Summer' 25 Collections",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 315,
                      width: 300,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Sponsored',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              )),
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/sponsored.png'),
                          ),
                          const Row(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'up to 50% off',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    accountEmail: Text("inaayasaqib.46292@gmail.com", style: TextStyle(color: Colors.black),),
                    currentAccountPictureSize: Size.square(40),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profileimage.png'),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                  ),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help,
                  ),
                  title: const Text(' Help Center '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                  ),
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
            height: 60,
            color: Colors.white,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex == 2;
                    });
                    viewmodel.navs();
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 25,
                        color: viewmodel.currentIndex == 2? Colors.red: Colors.black,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 7, color: viewmodel.currentIndex == 2? Colors.red: Colors.black,),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex == 0; 
                    });
                    viewmodel.nav();
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite_outline_sharp,
                        size: 25,
                        color: viewmodel.currentIndex == 0? Colors.red: Colors.black,
                      ),
                      Text(
                        'Wish List',
                        style: TextStyle(fontSize: 7, color: viewmodel.currentIndex == 0? Colors.red: Colors.black,),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex == 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        size: 25,
                        color: viewmodel.currentIndex == 1? Colors.red: Colors.black,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 7, color: viewmodel.currentIndex == 1? Colors.red: Colors.black,),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      viewmodel.currentIndex == 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 25,
                        color: viewmodel.currentIndex == 3? Colors.red: Colors.black,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 7, color: viewmodel.currentIndex == 3? Colors.red: Colors.black,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                      viewmodel.currentIndex == 4;
                    });
                    viewmodel.cart();
            },
            shape: const CircleBorder(),
            backgroundColor: Colors.white,
            child: Icon(Icons.shopping_cart_outlined, size: 30, color: viewmodel.currentIndex == 4? Colors.red: Colors.black,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}