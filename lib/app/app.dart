import 'package:ecommerce/service/product_service.dart';
import 'package:ecommerce/ui/ScreenChange/screen2.dart';
import 'package:ecommerce/ui/ScreenChange/screen3.dart';
import 'package:ecommerce/ui/ScreenChange/screenchange_view.dart';
import 'package:ecommerce/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecommerce/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecommerce/ui/views/CartScreen/cartscreen.view.dart';
import 'package:ecommerce/ui/views/CartScreen/check_out.dart';
import 'package:ecommerce/ui/views/Detail/personal_details.dart';
import 'package:ecommerce/ui/views/Detail/successful.dart';
import 'package:ecommerce/ui/views/Details/addtocart.dart';
import 'package:ecommerce/ui/views/Details/detailapp.dart';
import 'package:ecommerce/ui/views/Details/detailscreen.dart';
import 'package:ecommerce/ui/views/Details/image_slider.dart';
import 'package:ecommerce/ui/views/Details/itemdetails.dart';
import 'package:ecommerce/ui/views/Profile/profile.dart';
import 'package:ecommerce/ui/views/startup/Home/home_view.dart';
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/login.dart';
import 'package:ecommerce/ui/views/startup/Login%20and%20Signup/signup.dart';
import 'package:ecommerce/ui/views/startup/startup_view.dart';
import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true), 
    MaterialRoute(page: ScreenChangeView, initial: false),
    MaterialRoute(page: ScreenChangeone, initial: false),
    MaterialRoute(page: ScreenChangeTwo, initial: false),
    MaterialRoute(page: LoginView, initial: false),
    MaterialRoute(page: SignUpView, initial: false),
    MaterialRoute(page: HomeView, initial: false),
    MaterialRoute(page: WishlistView, initial: false),
    MaterialRoute(page: DetailappBar, initial: false),
    MaterialRoute(page: Detailscreen, initial: false),
    MaterialRoute(page: ImageSlider, initial: false),
    MaterialRoute(page: ItemDetails, initial: false),
    MaterialRoute(page: AddToCart, initial: false),
     MaterialRoute(page: CartScreen, initial: false),
     MaterialRoute(page: Successful, initial: false),
     MaterialRoute(page: PersonalDetails, initial: false),
     MaterialRoute(page: CheckOut, initial: false),
     MaterialRoute(page: Profile, initial: false),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Singleton(classType: Product)
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
