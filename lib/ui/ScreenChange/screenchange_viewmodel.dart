import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ScreenChangeViewModel extends BaseViewModel{
  final navigationservice = locator<NavigationService>();
  nav(){
    navigationservice.navigateToScreenChangeone();
  }
  skip(){
    navigationservice.navigateToLoginView();
  }
}