import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:ecommerce/service/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WishlistViewmodel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  Product product_service = locator<Product>();
  int currentIndex = 2;
    int currentInde = 1;
  int currentImage =0;
  int get _current => currentImage;
  nav(){
    navigationservice.navigateTo(Routes.homeView);
  }
  navs(){
    navigationservice.navigateTo(Routes.wishlistView);
  }
  set _current(int index) {
    currentImage = index;
    notifyListeners();
  }
  cart(){
    navigationservice.navigateTo(Routes.cartScreen);
  }
  final List<Product> product = [
    Product(
      title: 'Black Hoodie',
      description: 'Stay cozy and stylish with this black hoodie featuring a unique "Wonderland" graphic. Perfect for casual wear, it offers a relaxed fit with a comfortable hood and front pouch pocket. The detailed artwork adds a trendy touch, making it a standout piece in any wardrobe. Made from high-quality fabric, it ensures durability and warmth. Ideal for layering, pair it with your favorite jeans or joggers.',
      image: 'assets/images/5.png',
      review: '(488 reviews)',
      rate: '3.6',
      seller: 'patagonia',
      price: 499,
      category: 'Mens, Fashion',
      quantity: 10,
    ),
    Product(
      title: 'Black Dress',
      description: 'Elevate your wardrobe with this chic black mini dress, perfect for any occasion. Designed with a flattering bodycon fit, it accentuates your curves beautifully. The delicate chain straps add a touch of elegance and sophistication. Crafted from high-quality material, it ensures both comfort and style. Pair it with a light trench coat for a classy, layered look.',
      image: 'assets/images/6.png',
      review: '(554 reviews)',
      rate: '4.2',
      seller: 'Nordstrom',
      price: 2000,
      category: 'Womens, Fashion',
      quantity: 25,
    ),
    Product(
      title: 'Flare Dress',
      description: "This stunning flare dress features a beautiful pattern of colorful flowers on a black and brown background. The elegant design and flared silhouette create a flattering look for any body type. Made from soft, breathable fabric, it's perfect for both casual outings and special occasions. The vibrant floral print adds a touch of femininity and charm. Pair it with heels or flats for a versatile and stylish outfit.",
      image: 'assets/images/7.png',
      review: '(116 reviews)',
      rate: '3.9',
      seller: 'ASOS',
      price: 1990,
      category: 'Womens, Fashion',
      quantity: 6,
    ),
    Product(
      title: 'Jordan Stay',
      description:
          "Bold black and red design for a striking look on the court. Supportive upper for a locked-in feel. Durable traction for confident cuts and stops. Encapsulated Air cushioning for responsive comfort. Available in a variety of sizes.",
      image: 'assets/images/8.png',
      review: '(789 reviews)',
      rate: '4.1',
      seller: 'Zappos',
      price: 4999,
      category: 'Fashion',
      quantity: 3,
    ),
    Product(
      title: 'Sony PS4',
      description:
          'Includes PS4 console, extra controller, and 4 games. Games include Gran Turismo Sport, The Witcher 3: Wild Hunt, and God of War. 500GB storage (based on text on the box). Great value for the price!, Dive into endless gaming possibilities.',
      image: 'assets/images/9.png',
      review: '(89 reviews)',
      rate: '4.6',
      seller: 'Sony',
      price: 11999,
      category: 'Electronics',
      quantity: 5,
    ),
    Product(
      title: 'D72 Digital Camera',
      description:
          '24.2MP DX-format CMOS sensor for stunning image quality. 51-point autofocus system for sharp photos and fast performance. 100-25600 ISO range for great low-light shots. Built-in Wi-Fi and Bluetooth for easy sharing and connectivity. 3.0-inch tilting touchscreen for creative control',
      image: 'assets/images/10.png',
      review: '(456 reviews)',
      rate: '4.7',
      seller: 'Adorama',
      price: 26999,
      category: '3.4',
      quantity: 2,
    ),
    Product(
      title: 'Mens Starry',
      description: 'Eye-catching black and white starry design. Relaxed fit for comfortable wear. Perfect for summer nights out or casual Fridays. Machine washable for easy care. Available in a variety of sizes',
      image: 'assets/images/11.png',
      rate: '3.5',
      review: '(550 reviews)',
      seller: 'Hoodie Lab',
      price: 399,
      category: 'Mens, Fashion',
      quantity: 1,
    ),
    Product(
      title: 'Pink Gown',
      description: 'This gorgeous pink gown exudes elegance and grace with its long, frock-like design. The flowing silhouette enhances your natural beauty, making it perfect for formal occasions. Crafted from high-quality fabric, it offers both comfort and style. The soft pink hue adds a touch of femininity and charm. Ideal for weddings, proms, or any special event, pair it with your favorite accessories to complete the look.',
      image: 'assets/images/12.png',
      rate: '4.2',
      review: '(90 reviews)',
      seller: 'Mod Cloth',
      price: 1900,
      category: 'Womens, Fashion',
      quantity: 4,
    ),
    Product(
      title: 'Denim Dress',
      description: 'This chic denim dress, paired with stylish blue shorts, offers a modern twist on a classic look. The shiny silver color adds a touch of glam, perfect for making a statement. Crafted from high-quality fabric, it ensures both comfort and durability. Ideal for a day out or a casual evening, this outfit combines practicality with fashion-forward style. Elevate your wardrobe with this must-have denim ensemble.',
      image: 'assets/images/13.png',
      rate: '4.0',
      review: '(278 reviews)',
      seller: 'Revolve',
      price: 999,
      category: 'Mens, Fashion',
      quantity: 50,
    ),
    Product(
      title: 'Realme 7',
      description: 'Super smooth 6.5” 90Hz display for a great viewing experience. Powerful MediaTek Helio G95 processor for lag-free gaming. 64MP quad-camera system to capture stunning photos and videos. 30W fast charging to quickly get you back to full power. Sleek and stylish design that turns heads.',
      image: 'assets/images/14.png',
      rate: '4.4',
      review: '(60 reviews)',
      seller: 'Real Me',
      price: 3499,
      category: 'Electronics',
      quantity: 5,
    ),
    Product(
      title: 'Black Jacket 1250',
      description: 'Stylish black jacket with a classic design. Perfect for everyday wear or a night out. Appears to have a brown lining for added warmth (depending on weather). Material cannot be discerned from the image. Check out the photos for a closer look!',
      image: 'assets/images/15.png',
      rate: '4.6',
      review: '(107 reviews)',
      seller: 'Champion',
      price: 2999,
      category: 'Mens, Fashion',
      quantity: 32,
    ),
    Product(
      title: "men's & boys shoes",
      description: 'Classic brown brogue shoes with a black sole. Made from high-quality genuine leather for durability and style. Lace-up closure for a secure and adjustable fit. Versatile design that can be dressed up or down. Perfect for work, special occasions, or everyday wear. ',
      image: 'assets/images/16.png',
      rate: '4.3',
      review: '(89 reviews)',
      seller: 'Clarks',
      price: 1999,
      category: 'Fashion',
      quantity: 45,
    ),
  ];    
}
