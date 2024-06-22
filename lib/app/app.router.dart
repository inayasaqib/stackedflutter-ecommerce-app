// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce/service/product_service.dart' as _i20;
import 'package:ecommerce/ui/ScreenChange/screen2.dart' as _i4;
import 'package:ecommerce/ui/ScreenChange/screen3.dart' as _i5;
import 'package:ecommerce/ui/ScreenChange/screenchange_view.dart' as _i3;
import 'package:ecommerce/ui/views/CartScreen/cartscreen.view.dart' as _i15;
import 'package:ecommerce/ui/views/CartScreen/check_out.dart' as _i18;
import 'package:ecommerce/ui/views/Detail/personal_details.dart' as _i17;
import 'package:ecommerce/ui/views/Detail/successful.dart' as _i16;
import 'package:ecommerce/ui/views/Details/addtocart.dart' as _i14;
import 'package:ecommerce/ui/views/Details/detailapp.dart' as _i10;
import 'package:ecommerce/ui/views/Details/detailscreen.dart' as _i11;
import 'package:ecommerce/ui/views/Details/image_slider.dart' as _i12;
import 'package:ecommerce/ui/views/Details/itemdetails.dart' as _i13;
import 'package:ecommerce/ui/views/startup/Home/home_view.dart' as _i8;
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/login.dart'
    as _i6;
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/signup.dart'
    as _i7;
import 'package:ecommerce/ui/views/startup/startup_view.dart' as _i2;
import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_view.dart'
    as _i9;
import 'package:flutter/material.dart' as _i19;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i21;

class Routes {
  static const startupView = '/';

  static const screenChangeView = '/screen-change-view';

  static const screenChangeone = '/screen-changeone';

  static const screenChangeTwo = '/screen-change-two';

  static const loginView = '/login-view';

  static const signUpView = '/sign-up-view';

  static const homeView = '/home-view';

  static const wishlistView = '/wishlist-view';

  static const detailappBar = '/detailapp-bar';

  static const detailscreen = '/Detailscreen';

  static const imageSlider = '/image-slider';

  static const itemDetails = '/item-details';

  static const addToCart = '/add-to-cart';

  static const cartScreen = '/cart-screen';

  static const successful = '/Successful';

  static const personalDetails = '/personal-details';

  static const checkOut = '/check-out';

  static const all = <String>{
    startupView,
    screenChangeView,
    screenChangeone,
    screenChangeTwo,
    loginView,
    signUpView,
    homeView,
    wishlistView,
    detailappBar,
    detailscreen,
    imageSlider,
    itemDetails,
    addToCart,
    cartScreen,
    successful,
    personalDetails,
    checkOut,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.screenChangeView,
      page: _i3.ScreenChangeView,
    ),
    _i1.RouteDef(
      Routes.screenChangeone,
      page: _i4.ScreenChangeone,
    ),
    _i1.RouteDef(
      Routes.screenChangeTwo,
      page: _i5.ScreenChangeTwo,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i6.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i7.SignUpView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i8.HomeView,
    ),
    _i1.RouteDef(
      Routes.wishlistView,
      page: _i9.WishlistView,
    ),
    _i1.RouteDef(
      Routes.detailappBar,
      page: _i10.DetailappBar,
    ),
    _i1.RouteDef(
      Routes.detailscreen,
      page: _i11.Detailscreen,
    ),
    _i1.RouteDef(
      Routes.imageSlider,
      page: _i12.ImageSlider,
    ),
    _i1.RouteDef(
      Routes.itemDetails,
      page: _i13.ItemDetails,
    ),
    _i1.RouteDef(
      Routes.addToCart,
      page: _i14.AddToCart,
    ),
    _i1.RouteDef(
      Routes.cartScreen,
      page: _i15.CartScreen,
    ),
    _i1.RouteDef(
      Routes.successful,
      page: _i16.Successful,
    ),
    _i1.RouteDef(
      Routes.personalDetails,
      page: _i17.PersonalDetails,
    ),
    _i1.RouteDef(
      Routes.checkOut,
      page: _i18.CheckOut,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.ScreenChangeView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.ScreenChangeView(),
        settings: data,
      );
    },
    _i4.ScreenChangeone: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.ScreenChangeone(),
        settings: data,
      );
    },
    _i5.ScreenChangeTwo: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ScreenChangeTwo(),
        settings: data,
      );
    },
    _i6.LoginView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LoginView(),
        settings: data,
      );
    },
    _i7.SignUpView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SignUpView(),
        settings: data,
      );
    },
    _i8.HomeView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.HomeView(),
        settings: data,
      );
    },
    _i9.WishlistView: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.WishlistView(),
        settings: data,
      );
    },
    _i10.DetailappBar: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.DetailappBar(),
        settings: data,
      );
    },
    _i11.Detailscreen: (data) {
      final args = data.getArgs<DetailscreenArguments>(nullOk: false);
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i11.Detailscreen(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i12.ImageSlider: (data) {
      final args = data.getArgs<ImageSliderArguments>(nullOk: false);
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.ImageSlider(
            key: args.key, image: args.image, onChange: args.onChange),
        settings: data,
      );
    },
    _i13.ItemDetails: (data) {
      final args = data.getArgs<ItemDetailsArguments>(nullOk: false);
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i13.ItemDetails(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i14.AddToCart: (data) {
      final args = data.getArgs<AddToCartArguments>(nullOk: false);
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i14.AddToCart(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i15.CartScreen: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.CartScreen(),
        settings: data,
      );
    },
    _i16.Successful: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.Successful(),
        settings: data,
      );
    },
    _i17.PersonalDetails: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.PersonalDetails(),
        settings: data,
      );
    },
    _i18.CheckOut: (data) {
      return _i19.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.CheckOut(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DetailscreenArguments {
  const DetailscreenArguments({
    this.key,
    required this.product,
  });

  final _i19.Key? key;

  final _i20.Product product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant DetailscreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class ImageSliderArguments {
  const ImageSliderArguments({
    this.key,
    required this.image,
    required this.onChange,
  });

  final _i19.Key? key;

  final String image;

  final dynamic Function(int) onChange;

  @override
  String toString() {
    return '{"key": "$key", "image": "$image", "onChange": "$onChange"}';
  }

  @override
  bool operator ==(covariant ImageSliderArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.image == image &&
        other.onChange == onChange;
  }

  @override
  int get hashCode {
    return key.hashCode ^ image.hashCode ^ onChange.hashCode;
  }
}

class ItemDetailsArguments {
  const ItemDetailsArguments({
    this.key,
    required this.product,
  });

  final _i19.Key? key;

  final _i20.Product product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant ItemDetailsArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class AddToCartArguments {
  const AddToCartArguments({
    this.key,
    required this.product,
  });

  final _i19.Key? key;

  final _i20.Product product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant AddToCartArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

extension NavigatorStateExtension on _i21.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToScreenChangeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.screenChangeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToScreenChangeone([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.screenChangeone,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToScreenChangeTwo([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.screenChangeTwo,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWishlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.wishlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetailappBar([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.detailappBar,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetailscreen({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailscreen,
        arguments: DetailscreenArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToImageSlider({
    _i19.Key? key,
    required String image,
    required dynamic Function(int) onChange,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.imageSlider,
        arguments:
            ImageSliderArguments(key: key, image: image, onChange: onChange),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToItemDetails({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.itemDetails,
        arguments: ItemDetailsArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddToCart({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.addToCart,
        arguments: AddToCartArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCartScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cartScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessful([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successful,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalDetails([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalDetails,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCheckOut([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.checkOut,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithScreenChangeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.screenChangeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithScreenChangeone([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.screenChangeone,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithScreenChangeTwo([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.screenChangeTwo,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWishlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.wishlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDetailappBar([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.detailappBar,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDetailscreen({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.detailscreen,
        arguments: DetailscreenArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithImageSlider({
    _i19.Key? key,
    required String image,
    required dynamic Function(int) onChange,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.imageSlider,
        arguments:
            ImageSliderArguments(key: key, image: image, onChange: onChange),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithItemDetails({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.itemDetails,
        arguments: ItemDetailsArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddToCart({
    _i19.Key? key,
    required _i20.Product product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.addToCart,
        arguments: AddToCartArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCartScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cartScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSuccessful([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.successful,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalDetails([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalDetails,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCheckOut([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.checkOut,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
