import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel{
  final navigationservice = locator<NavigationService>();

  navigate(){
     navigationservice.navigateTo(Routes.loginView);
  }
  nav(){
    navigationservice.navigateTo(Routes.homeView); 
     }
}