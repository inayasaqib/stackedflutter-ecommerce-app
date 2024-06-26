import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:ecommerce/service/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel{
   Product product_service = locator<Product>();
  final navigationservice = locator<NavigationService>();
  nav(){
    navigationservice.navigateTo(Routes.wishlistView);
  }
  navs(){
    navigationservice.navigateTo(Routes.homeView);
  }
  cart(){
    navigationservice.navigateTo(Routes.cartScreen);
  }
  profile(){
    navigationservice.navigateTo(Routes.profile);
  }
  int currentIndex = 2;
  final List<Product> product = [
      Product(
        title: "Women printed kurta",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        image: "assets/images/1.png",
        review: "(320 reviews)",
        seller: 'Urban threads',
        price: 1500,
        category: "Women",
        quantity: 1,
        rate: '4.5'),
    Product(
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        image: 'assets/images/2.png',
        review: "(32 reviews)",
        seller: "Trendy Threads Boutique",
        price: 2499,
        category: "fashion",
        quantity: 2,
        rate: '3.7'),
      ];  
      final List<Home> home = [
        Home(
          title: 'IWC Schaffhausen',
          description: "2021 Pilot's Watch 'SIHH 2019' 44mm",
          image: 'assets/images/3.png',
          review: '(450 reviews)',
          seller: 'Tourneau',
          price: 'RS6500',
          category: 'Electronics',
          rate: '4.2',
          quantity: 2,
        ),
        Home(
          title: 'Labbin White Sneakers',
          description: 'For Men and Female',
          image: 'assets/images/4.png',
          review: '(560 reviews)',
          seller: 'stride and souls',
          price: 'RS6500',
          category: 'Fashion',
          rate: '3.2',
          quantity: 4,
        )
      ];
}