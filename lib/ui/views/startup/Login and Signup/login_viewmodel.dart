import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel{
    final navigationservice = locator<NavigationService>();
void navigate() {
    navigationservice.navigateTo(Routes.signUpView);
  }
   nav (){
    navigationservice.navigateTo(Routes.homeView);
  }
}