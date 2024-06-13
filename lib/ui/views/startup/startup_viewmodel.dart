import 'package:ecommerce/app/app.locator.dart';
import 'package:ecommerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final navigatioService = locator<NavigationService>();
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 5));
    navigatioService.navigateToScreenChangeView();
  }
}